//Example 7_6
clc;clear;
// Given values
// Properties
//For air at atmospheric pressure and at T = 25°C
T=25;//degree celsius
rho_p=1.184;//kg/m^3
mu_p=1.849*10^-5;//kg/m.s
V_p=50;//Speed in mi/h
//Similarly,at T=5°C
T=5;//degree celsius
rho_m=1.269;//kg/m^3
mu_m=1.754*10^-5;// kg/m.s
V_m=221;//mi/h
// (L_p/L_m)=5 The ratio of Lp to Lm is known because the prototype is five times larger than the scale model
F_dm=21.2;//The average drag force on the model in lbf 

// Calculation
F_dp=F_dm*(rho_p/rho_m)*(V_p/V_m)^2*(5)^2;
printf("The aerodynamic drag force on the prototype=%0.1f lbf",F_dp);
