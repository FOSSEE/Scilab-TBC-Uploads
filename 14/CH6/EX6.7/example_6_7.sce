//Chapter 6
//Example 6.7
//Page 152
//3perunitreactance
//run clear command then execute dependancy file and then the source file
//dependency file is pucalc.sci
clc;

//Given
z = 0.121;
P = 400e6;
V_ht = 220e3;
V_lt = 22e3;

V_ht_base = 230e3;
P_ht_base = 100e6;

z_pu = z * P / (V_lt)^2;
printf("\n\n On its own base the transformer reactance = %.2f per unit",z_pu)
z_new_pu = pucalc(z_pu,V_ht,V_ht_base,P_ht_base,P);
printf("\n\n On the chosen base the reactance = %.4f per unit",z_new_pu)
