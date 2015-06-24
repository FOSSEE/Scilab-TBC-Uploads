clc
clear 
printf("example 3.3 page number 91\n\n")

//to find the consumption of NaCl and H2SO4 in HCl consumption

HCl_production = 500   //required to be produced in kg
NaCl_required = (117/73)*HCl_production;
yield = 0.92;
purity_NaCl= 0.96;

actual_NaCl = NaCl_required/(purity_NaCl*yield);
printf("amount of NaCl required = %f kg",actual_NaCl)

purity_H2SO4 = 0.93;
H2SO4_consumption = (98/73)*(HCl_production/(yield*purity_H2SO4));
printf("\n\namount of H2SO4 consumed = %f kg",H2SO4_consumption)

Na2SO4_produced = (142/73)*HCl_production;
printf("\n\namount of Na2SO4 produced = %f kg",Na2SO4_produced)
