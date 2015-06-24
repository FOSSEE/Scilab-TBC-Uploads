clear;
clc;
// Textbook of Heat Transfer(4th Edition)) , S P Sukhatme
// Chapter 1 - Introduction

//Example 1.2
// Page 14
printf("Example 1.2, Page 14 \n \n")
//Solution:
i=950; // radiation flux [W/m^2]
A=1.5; // area [m^2]
T_i=61; // inlet temperature
T_o=69; // outlet temperature
mdot=1.5; // [kg/min] , mass flow rate
Mdot=1.5/60; // [kg/sec]
Q_conductn=50; //[W]
t=0.95; // transmissivity
a=0.97;// absoptivity
// from appendix table A.1 at 65 degree C
C_p= 4183 ; // [J/kg K]
// Using Equation 1.4.15 , assuming that the flow through the tubes is steady and one dimensional.
// in this case (dW/dt)_shaft = 0
// assuming (dW/dt)_shear is negligible
// eqn(1.4.15) reduces to
q=Mdot*C_p*(T_o-T_i);

// let 'n' be thermal efficiency
n=q/(i*A);
n_percent=n*100;


// equation 1.4.13 yields dQ/dt = 0
Q_re_radiated=(i*A*t*a)-Q_conductn-q; // [W]


printf("Useful heat gain rate is %f W \n",q);
printf("Thermal efficiency is %e i.e. %f per cent \n",n,n_percent);
printf("The rate at which energy is lost by re-radiation and convection is %f W",Q_re_radiated)