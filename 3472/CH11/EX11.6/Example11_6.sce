// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 4: OVERHEAD LINE INSULATORS

// EXAMPLE : 4.6 :
// Page number 186
clear ; clc ; close ; // Clear the work space and console

// Given data
m = 6.0               // Mutual capacitance
n = 5.0               // Number of insulators

// Calculations
E_4 = (1+(1/m))                                    // Voltage across 4th insulator as percent of E_5(%)
E_3 = (1+(3/m)+(1/m**2))                           // Voltage across 3rd insulator as percent of E_5(%)
E_2 = (1+(6/m)+(5/m**2)+(1/m**3))                  // Voltage across 2nd insulator as percent of E_5(%)
E_1 = (1+(10/m)+(15/m**2)+(7/m**3)+(1/m**4))       // Voltage across 1st insulator as percent of E_5(%)
E_5 = 100/(E_4+E_3+E_2+E_1+1)                      // Voltage across 5th insulator as percent of E_5(%)
E4 = E_4*E_5                                       // Voltage across 4th insulator as percent of E_5(%)
E3 = E_3*E_5                                       // Voltage across 3rd insulator as percent of E_5(%)
E2 = E_2*E_5                                       // Voltage across 2nd insulator as percent of E_5(%)
E1 = E_1*E_5                                       // Voltage across 1st insulator as percent of E_5(%)
eff = 100/(n*E1/100)                               // String efficiency(%)

// Results
disp("PART II - EXAMPLE : 4.6 : SOLUTION :-")
printf("\nVoltage distribution as a percentage of voltage of conductor to earth are:")
printf("\n E_1 = %.2f percent", E1)
printf("\n E_2 = %.2f percent", E2)
printf("\n E_3 = %.1f percent", E3)
printf("\n E_4 = %.1f percent", E4)
printf("\n E_5 = %.2f percent", E_5)
printf("\nString efficiency = %.f percent \n", eff)
printf("\nNOTE: Changes in obtained answer from that of textbook is due to more precision")
