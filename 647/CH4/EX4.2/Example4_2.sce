clear;
clc;

// Example: 4.2
// Page: 119

printf("Example: 4.2 - Page: 119\n\n");

// Solution

//*****Data*****//
// Mg + (1/2)O2 = MgO ...............(1)
deltaH1 = -610.01;// [kcal]
// 2Fe + (3/2)O2 = Fe2O3 ............(2)
deltaH2 = -810.14;// [kcal]
//*************//

// 3Mg + Fe2O3 = 3MgO + 2Fe .........(3)
// Multiplying (1) by 3 and substracting from (2), we get (3):
deltaH = 3*deltaH1 - deltaH2;// [kcal]
printf("Heat produced in the reaction is %.1f kcal\n",deltaH);