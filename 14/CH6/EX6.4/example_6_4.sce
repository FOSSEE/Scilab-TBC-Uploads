//Chapter 6
//Example 6.4
//Page 147
//leakagereactance
clear;clc;

//Given
V_lt = 110;
V_ht = 440;
P = 2.5e3;
x_lt = 0.06;

//Calculations
disp('Viewed from low-tension side')
lt_base_impedance = (V_lt)^2 / P;
printf("\n Leakage reactance from low-tension side = %.2f ohm",x_lt)
printf("\n Low-tension base impedance = %.2f ohmn",lt_base_impedance)
X_lt_pu = x_lt / lt_base_impedance;
printf("\n Leakage reactance in per unit from Low-tension side = %.4f per unit \n\n",X_lt_pu)
disp('Viewed from high-tension side')
x_ht = x_lt * (V_ht / V_lt)^2;
ht_base_impedance = (V_ht)^2 / P;
printf("\n Leakage reactance from high-tension side = %.2f ohm",x_ht)
printf("\n High-tension base impedance = %.2f ohmn",ht_base_impedance)
X_ht_pu = x_ht / ht_base_impedance;
printf("\n Leakage reactance in per unit from Low-tension side = %.4f per unit \n\n",X_ht_pu)