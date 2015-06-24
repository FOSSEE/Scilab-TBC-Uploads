//Chapter 6
//Example 6.6
//Page 151
//3phasetransformers
clear;clc;

//Given
P = 25e6;
V_ht = 38.1e3;
V_lt = 3.81e3;
R_l = 0.6;
P_ht_base = 75e6;
V_ht_base = 66e3;

//Low-tension side base ratings
disp('Low-tension side')
P_lt_base = P_ht_base;
V_lt_base = (V_lt/(V_ht*sqrt(3)))*V_ht_base;
printf("\n Base for low tension side is %.0f MVA,%.2f kV",P_lt_base/1e6,V_lt_base/1e3)
Z_lt_base = (V_lt_base)^2/P_lt_base;
R_lt_l_base = R_l / Z_lt_base;
printf("\n Base impedance for the low-tension side = %.2f ohm",Z_lt_base)
printf("\n Per unit impedance of load on the low-tension side = %.2f per unit \n\n",R_lt_l_base)

disp('High-tension side')
R_l_ht = R_l * ((V_ht*sqrt(3))/V_lt)^2;
Z_ht_base = (V_ht_base)^2 / P_ht_base;
R_ht_l_base = R_l_ht / Z_ht_base;
printf("\n Base impedance for the high-tension side = %.2f ohm",Z_ht_base)
printf("\n Per unit impedance of load on the high-tension side = %.2f per unit",R_ht_l_base)