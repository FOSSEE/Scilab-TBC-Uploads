clc;
clear;

printf("\n Example 9.11\n");

d=0.15; //Diameter of pipe
Ts=400; //Surface temperature
Ta=294; //Air temperture
//Over a wide range of temperature, k^4*(beta*g*rho^2*Cp/(Meu*k)) = 36.0
//For air at a mean temperature i.e. 347 K
k=0.0310; //Thermal conductivity ---Table 6, Appendix A1
//X=beta*g*rho^2*Cp/(Meu*k)
X=36/k^4;
//From Equation 9.102:
GrPr=X*(Ts-Ta)*d^3;
//From Table 9.5:
n=0.25;
C_dd=1.32;
//Thus, in Equation 9.104:
h=C_dd*(Ts-Ta)^n*d^(3*n-1);
printf("\n The heat transfer coefficient = %.2f W/m^2 K",h);
