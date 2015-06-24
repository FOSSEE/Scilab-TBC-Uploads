clear;
clc;

// Example: 4.5
// Page: 122

printf("Example: 4.5 - Page: 122\n\n");

// Solution

//*****Data*****//
// Zn + S = ZnS ....................................................(A)
deltaH_A = -44;// [kcal/kmol]
// ZnS + 3O2 = 2ZnO + 2SO2 .........................................(B)
deltaH_B = -221.88;// [kcal/kmol]
// 2SO2 + O2 = 2SO3 ................................................(C)
deltaH_C = -46.88;// [kcal/kmol]
// ZnO + SO3 = ZnSO4 ...............................................(D)
deltaH_D = -55.10;// [kcal/kmol]
//***************//

// Multiplying (A) by 2 & (D) by (2) and adding (A), (B), (C) & (D)
// Zn + S + 2O2 = ZnSO4
deltaH = 2*deltaH_A + deltaH_B + deltaH_C + 2*deltaH_D;// [kcal/kmol for 2 kmol of ZnSO4]
printf("Heat of formation of ZnSO4 is %.2f kcal/kmol\n",deltaH/2);