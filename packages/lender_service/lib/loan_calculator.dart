// Importing schema.dart to use the RepaymentFrequency enum and other schema definitions.
import 'schema.dart';

abstract class BaseLoanCalculator {
  final double principal;
  final double interest;
  final int tenure;
  final RepaymentFrequency frequency;

  BaseLoanCalculator({
    required this.principal,
    required this.interest,
    required this.tenure,
    required this.frequency,
  });
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
}
