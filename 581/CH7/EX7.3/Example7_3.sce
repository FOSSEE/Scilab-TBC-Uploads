
clear;
clc;

printf("\t Example 7.3\n");

m=21.5;  //mass flow rate, kg/s

D=0.12;   //diameter of pipe, m
T1=363;   //pipe temperature,K
T2=323;   //bulk temp. of fluid,K
a=977;  //density, kg/m^3
u=m/(a*3.14*(D/2)^2);; //average velocity,m/s
Re=u*D/(4.07*10^-7);  //reynolds no.
Uw=3.1*10^-4;        // wall side viscosity,N*s/m^2
Ub=5.38*10^-4;   //bulk viscosity, N*s/m^2

Pr=2.47;  //prandtl no.
f=1/(1.82/2.303*log(Re)-1.64)^2;     // formula for friction factor for smooth pipes

Nu=(f/8*Re*Pr)/(1.07+12.7*(f/8)^(0.5)*(Pr^(2/3)-1));   //formula for nusselt no.in fully developed flow in smooth pipes

h=Nu*0.661/D    // convective heat transfer coefficient,W/(m^2)/K
h1=8907;   //convective heat transfer coefficient,W/(m^2)/K

//corrected friction factor = friction factor at bulk temp.*K where K=(7-u1/u2)/6 for wall temp.>bulk temp.

f1=f*((7-Ub/Uw)/6);    // corrected friction factor
F=0.0122;  //corrected friction factor

printf("\t correlation friction factor. is : %.4f\n",F);
printf("\t convection heat transfer coefficient is :%.0f W/(m^2)/K \n",h1);

// end