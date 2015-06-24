clear;
clc;
printf("\t\t\tExample Number 11.2\n\n\n");
// diffusion coefficient for co2
// Example 11.2(page no.-586-587)
// solution

T = 25+273.15;// [K] temperature of air
p = 1.01325*10^(5);// [Pa] atmospheric pressure
pw1 = 3166.7618901;// [Pa] partial pressure at the bottom of test tube
pw2 = 0;// [Pa] partial pressure at the top of test tube
pa1 = p-pw1;// [Pa] 
pa2 = p-pw2;// [Pa]
D = .256*10^(-4);// [square meter/s] diffusion coefficient
Mw = 18;// [g] molecular weight of water
A = 22*((5*10^(-3))^(2))/7;// [square meter] area of test tube
R = 8314;// [J/mol K]gas constant
// using equation(11-16)
mw = (D*p*Mw*A/(R*T*0.15))*log(pa2/pa1);// mass flow rate
printf(" mass flow rate is %e kg/s",mw);