clear;
clc;

// Example: 4.4
// Page: 122

printf("Example: 4.4 - Page: 122\n\n");

// Solution

//*****Data*****//
deltaH_C6H12O6 = -1273;// [kcal]
deltaH_C2H5OH = -277.6;// [kcal]
deltaH_CO2 = -393.5;// [kcal]
deltaH_H2O = -285.8;// [kcal]
//**************//

// C6H12O6(s) = 2C2H5OH(l) + 2CO2(g) ..........................(A)
deltaH_A = 2*deltaH_C2H5OH + 2*deltaH_CO2 - deltaH_C6H12O6;// [kJ]
// C6H12O6(s) + 6O2(g) = 6CO2(g) + 6H2O(l) ...................(B)
deltaH_B = 6*deltaH_CO2 + 6*deltaH_H2O - deltaH_C6H12O6;// [kJ]
printf("Energy supplied by reaction A is %.1f kJ\n",deltaH_A);
printf("Energy supplied by reaction B is %.1f kJ\n",deltaH_B);
if deltaH_A < deltaH_B
    printf("Reaction A supplies more energy to the organism\n");
else
     printf("Reaction B supplies more energy to the organism\n");
end