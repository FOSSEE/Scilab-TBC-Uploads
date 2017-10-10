//Example 7_5
clc;clear;
// Given values
// Properties
//For air at atmospheric pressure and at T = 25°C
T=25;// °C
rho_p=1.184;//kg/m^3
mu_p=1.849*10^-5;//kg/m.s
//Similarly,at T=5°C
T=5;// °C
rho_m=1.269;//kg/m^3
mu_m=1.754*10^-5;// kg/m.s
V_p=50;//Speed in mi/h
// (L_p/L_m)=5 The ratio of Lp to Lm is known because the prototype is five times larger than the scale model

// Calculation
V_m=(V_p*(mu_m/mu_p)*(rho_p/rho_m)*(5));
printf("The unknown wind tunnel speed for the model tests=%0.0f mi/h\n",V_m);
