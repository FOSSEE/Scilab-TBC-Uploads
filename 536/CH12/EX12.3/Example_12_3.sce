clc;
clear;

printf("\n Example 12.3\n");

u=3.5; //Velocity of water
d=25e-3; //Diameter of the pipe
l=6; //Length of the pipe
T1=300; //Temperature at enterance
T2=330; //Temperature at exit
rho=1000; //density of water at 310 K
Meu=0.7e-3; //Viscosity of water at 310 K
//Taking the fluid properties at 310 K and assuming that fully developed flow exists
Cp=4.18e3; //heat capapcity
k=0.65; //Thermal conductivity

Re=d*u*rho/Meu;
Pr=Cp*Meu/k;

printf("\n (a) Reynolds analogy");
h1=0.032*(Re^-0.25)*Cp*rho*u;//....Equation 12.139
printf("\n h = %.2f kW/m^2 K",h1*1e-3);
// on solving we get final equation as
theta_dash1=330-10^(log10(30)-(0.0654*h1*1e-3/2.303));
printf("\n The outlet temperature = %.1f K",theta_dash1)

printf("\n\n (b) Taylor Prandtl Equation");
h2=0.032*(Re^-0.25)*(1+2*Re^(-1/8)*(Pr-1))^-1*Cp*rho*u;
printf("\n h = %.2f kW/m^2 K",h2*1e-3);
// on solving we get final equation as
theta_dash2=330-10^(log10(30)-(0.0654*h2*1e-3/2.303));//....Equation 12.140
printf("\n The outlet temperature = %.1f K",theta_dash2)

printf("\n\n (c) Universal velocity profile equation");
h3=0.032*(Re^-0.25)*(1+0.82*Re^(-1/8)*((Pr-1)+log(0.83*Pr+0.17)))^-1*Cp*rho*u;//...equation 12.141
printf("\n h = %.2f kW/m^2 K",h3*1e-3);
// on solving we get final equation as
theta_dash3=330-10^(log10(30)-(0.0654*h3*1e-3/2.303));
printf("\n The outlet temperature = %.1f K",theta_dash3)

printf("\n\n (d) Nu=0.023*Re^0.8*Pr^0.33");
h4=k/d*0.023*Re^0.8*Pr^0.33;
printf("\n h = %.2f kW/m^2 K",h4*1e-3);
// on solving we get final equation as
theta_dash4=330-10^(log10(30)-(0.0654*h4*1e-3/2.303));
printf("\n The outlet temperature = %.1f K",theta_dash4)
