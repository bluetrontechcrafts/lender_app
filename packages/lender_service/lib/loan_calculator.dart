// Importing schema.dart to use the RepaymentFrequency enum and other schema definitions.
import 'dart:math';

import 'schema.dart';

abstract class BaseLoanCalculator {
  double _principal;
  double _interest;
  int _tenure;
  RepaymentFrequency _frequency;

  // Getters for private fields
  double get principal => _principal;
  double get interest => _interest;
  int get tenure => _tenure;
  RepaymentFrequency get frequency => _frequency;

  BaseLoanCalculator({
    required double principal,
    required double interest,
    required int tenure,
    required RepaymentFrequency frequency,
  })  : _principal = principal,
        _interest = interest,
        _tenure = tenure,
        _frequency = frequency;

  BaseLoanCalculator setPrincipal(double principal) {
    _principal = principal;
    return this;
  }

  BaseLoanCalculator setInterest(double interest) {
    _interest = interest;
    return this;
  }

  BaseLoanCalculator setInterestByAmountPer100(double interest) {
    _interest = interest / 100;
    return this;
  }

  BaseLoanCalculator setTenure(int tenure) {
    _tenure = tenure;
    return this;
  }

  BaseLoanCalculator setFrequency(RepaymentFrequency frequency) {
    _frequency = frequency;
    return this;
  }

  LoanSummary getSummary();
}

/// A calculator for loans with flat interest rate.
/// This class calculates the interest on the principal amount without considering the reducing balance.
/// Formula: Total Interest = Principal * Interest Rate * Tenure
/// Where:
/// Total Interest = the total interest payable over the loan tenure
/// Principal = the principal loan amount
/// Interest Rate = the annual interest rate (decimal)
/// Tenure = the time the money is invested for in years
class FlatInterestCalculator extends BaseLoanCalculator {
  FlatInterestCalculator({
    required super.principal,
    required super.interest,
    required super.tenure,
    required super.frequency,
  });

  @override
  LoanSummary getSummary() {
    double totalInterest = principal * (interest / 100) * tenure;
    double totalRepayment = principal + totalInterest;

    List<RepaymentSchedule> schedules = [];
    double monthlyRepayment = totalRepayment / tenure;

    DateTime currentDate = DateTime.now();
    for (int i = 0; i < tenure; i++) {
      schedules.add(RepaymentSchedule(
        date: currentDate.add(Duration(days: 30 * (i + 1))),
        amount: monthlyRepayment,
        principal: principal / tenure,
        interest: totalInterest / tenure,
      ));
    }

    return LoanSummary(
      schedules: schedules,
      totalPrincipal: principal,
      totalInterest: totalInterest,
      totalRepayment: totalRepayment,
    );
  }
}

/// A loan calculator that calculates interest using the simple interest formula.
/// Formula: Total Interest = Principal * Interest Rate * Tenure
/// Where:
/// Total Interest = the total interest payable over the loan tenure
/// Principal = the principal loan amount
/// Interest Rate = the annual interest rate (decimal)
/// Tenure = the time the money is invested for in years
class SimpleInterestCalculator extends BaseLoanCalculator {
  SimpleInterestCalculator({
    required super.principal,
    required super.interest,
    required super.tenure,
    required super.frequency,
  });

  @override
  LoanSummary getSummary() {
    double totalInterest = principal * (interest / 100) * tenure;
    double totalRepayment = principal + totalInterest;

    List<RepaymentSchedule> schedules = [];
    double monthlyRepayment = totalRepayment / tenure;

    DateTime currentDate = DateTime.now();
    for (int i = 0; i < tenure; i++) {
      schedules.add(RepaymentSchedule(
        date: currentDate.add(Duration(days: 30 * (i + 1))),
        amount: monthlyRepayment,
        principal: principal / tenure,
        interest: totalInterest / tenure,
      ));
    }

    return LoanSummary(
      schedules: schedules,
      totalPrincipal: principal,
      totalInterest: totalInterest,
      totalRepayment: totalRepayment,
    );
  }
}

/// A calculator for loans with reducing interest rate.
/// This class calculates the interest on the principal amount considering the reducing balance.
/// Formula: Interest for each period = Remaining Principal * Interest Rate
/// Where:
/// Interest for each period = the interest payable for each period
/// Remaining Principal = the remaining principal amount after each repayment
/// Interest Rate = the annual interest rate (decimal)
class ReducingInterestCalculator extends BaseLoanCalculator {
  ReducingInterestCalculator({
    required super.principal,
    required super.interest,
    required super.tenure,
    required super.frequency,
  });

  @override
  LoanSummary getSummary() {
    double remainingPrincipal = principal;
    double totalInterest = 0;
    List<RepaymentSchedule> schedules = [];

    DateTime currentDate = DateTime.now();
    for (int i = 0; i < tenure; i++) {
      double interestForPeriod = remainingPrincipal * (interest / 100) / 12;
      double principalRepayment = principal / tenure;
      double totalRepayment = principalRepayment + interestForPeriod;

      schedules.add(RepaymentSchedule(
        date: currentDate.add(Duration(days: 30 * (i + 1))),
        amount: totalRepayment,
        principal: principalRepayment,
        interest: interestForPeriod,
      ));

      remainingPrincipal -= principalRepayment;
      totalInterest += interestForPeriod;
    }

    double totalRepaymentAmount = principal + totalInterest;

    return LoanSummary(
      schedules: schedules,
      totalPrincipal: principal,
      totalInterest: totalInterest,
      totalRepayment: totalRepaymentAmount,
    );
  }
}

/// A calculator for loans with compound interest rate.
/// This class calculates the interest on the principal amount considering the compounding effect.
/// Formula: A = P (1 + r/n)^(nt)
/// Where:
/// A = the future value of the loan, including interest
/// P = the principal loan amount
/// r = the annual interest rate (decimal)
/// n = the number of times that interest is compounded per unit t
/// t = the time the money is invested for in years
class CompoundInterestCalculator extends BaseLoanCalculator {
  CompoundInterestCalculator({
    required super.principal,
    required super.interest,
    required super.tenure,
    required super.frequency,
  });

  @override
  LoanSummary getSummary() {
    double totalRepayment =
        pow(principal * (1 + (interest / 100) / 12), tenure).toDouble();
    double totalInterest = totalRepayment - principal;

    List<RepaymentSchedule> schedules = [];
    double monthlyRepayment = totalRepayment / tenure;

    DateTime currentDate = DateTime.now();
    for (int i = 0; i < tenure; i++) {
      schedules.add(RepaymentSchedule(
        date: currentDate.add(Duration(days: 30 * (i + 1))),
        amount: monthlyRepayment,
        principal: principal / tenure,
        interest: totalInterest / tenure,
      ));
    }

    return LoanSummary(
      schedules: schedules,
      totalPrincipal: principal,
      totalInterest: totalInterest,
      totalRepayment: totalRepayment,
    );
  }
}

class RepaymentSchedule {
  final DateTime date;
  final double amount;
  final double principal;
  final double interest;

  RepaymentSchedule({
    required this.date,
    required this.amount,
    required this.principal,
    required this.interest,
  });
}

class LoanSummary {
  final double totalPrincipal;
  final double totalInterest;
  final double totalRepayment;

  final List<RepaymentSchedule> schedules;

  LoanSummary({
    required this.schedules,
    required this.totalPrincipal,
    required this.totalInterest,
    required this.totalRepayment,
  });

  double get totalProfit => totalInterest;
}
