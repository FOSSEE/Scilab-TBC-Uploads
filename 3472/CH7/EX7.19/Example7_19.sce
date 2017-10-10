// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.19 :
// Page number 80-81
clear ; clc ; close ; // Clear the work space and console

// Given data
fixed_cost = 4.0*10**4         // Fixed cost of plant(Rs)
salvage_value = 4.0*10**3      // Salvage value(Rs)
n = 20.0                       // Useful life(years)
r = 0.06                       // Sinking fund depreciation compounded annually

// Calculations
n_2 = n/2                                    // Halfway of useful life(years)
// Case(a)
total_dep_A = fixed_cost-salvage_value       // Total depreciation in 20 years(Rs)
dep_10_A = total_dep_A/2                     // Depreciation in 10 years(Rs)
value_10_A = fixed_cost-dep_10_A             // Value at the end of 10 years(Rs)
// Case(b)
P_B = fixed_cost                             // Capital outlay(Rs)
q_B = (salvage_value/fixed_cost)**(1/n)      // q = (1-p)
value_10_B = P_B*(q_B)**n_2                  // Value at the end of 10 years(Rs)
// Case(c)
P_C = fixed_cost                             // Capital cost of plant(Rs)
P__C = salvage_value                         // Scrap value(Rs)
Q_C = P_C-P__C                               // Cost of replacement(Rs)
q_C = Q_C/(((1+r)**n-1)/r)                   // Yearly charge(Rs)
amount_dep = q_C*((1+r)**n_2-1)/r            // Amount deposited at end of 10 years(Rs)
value_10_C = P_C-amount_dep                  // Value at the end of 10 years(Rs)

// Results
disp("PART I - EXAMPLE : 7.19 : SOLUTION :-")
printf("\nCase(a): Valuation halfway through its life based on Straight line depreciation method = Rs %.1e ", value_10_A)
printf("\nCase(b): Valuation halfway through its life based on Reducing balance depreciation method = Rs %.2e ", value_10_B)
printf("\nCase(c): Valuation halfway through its life based on Sinking fund depreciation method = Rs %.2e ", value_10_C)
