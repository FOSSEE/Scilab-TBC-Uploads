clc;
clear;

printf("\n Example 12.4\n");

u=3.5; //Velocity of air
d=25e-3; //Diameter of the pipe
l=6; //Length of the pipe
T1=290; //Temperature at enterance
T2=350; //Temperature at exit
rho=29/22.4*273/310; //density of air at 310 K
Meu=0.018e-3; //Viscosity of air at 310 K
//Taking the physical properties at 310 K and assuming that fully developed flow exists
Cp=1.003e3; //heat capapcity
k=0.024; //Thermal conductivity

Re=d*u*rho/Meu;
Pr=Cp*Meu/k;

printf("\n (a) Reynolds analogy");
h1=0.032*(Re^-0.25)*Cp*rho*u;//....Equation 12.139
printf("\n h = %.2f W/m^2 K",h1);
// on solving we get final equation as
theta_dash1=350-10^(log10(60)-(239.88*h1*1e-3/2.303));
printf("\n The outlet temperature = %.1f K",theta_dash1)

printf("\n\n (b) Taylor Prandtl Equation");
h2=0.032*(Re^-0.25)*(1+2*Re^(-1/8)*(Pr-1))^-1*Cp*rho*u;
printf("\n h = %.2f W/m^2 K",h2);
// on solving we get final equation as
theta_dash2=350-10^(log10(60)-(239.88*h2*1e-3/2.303));//....Equation 12.140
printf("\n The outlet temperature = %.1f K",theta_dash2)

printf("\n\n (c) Universal velocity profile equation");
h3=0.032*(Re^-0.25)*(1+0.82*Re^(-1/8)*((Pr-1)+log(0.83*Pr+0.17)))^-1*Cp*rho*u;//...equation 12.141
printf("\n h = %.2f W/m^2 K",h3);
// on solving we get final equation as
theta_dash3=350-10^(log10(60)-(239.88*h3*1e-3/2.303));
printf("\n The outlet temperature = %.1f K",theta_dash3)

printf("\n\n (d) Nu=0.023*Re^0.8*Pr^0.33");
h4=k/d*0.023*Re^0.8*Pr^0.33;
printf("\n h = %.2f W/m^2 K",h4);
// on solving we get final equation as
theta_dash4=350-10^(log10(60)-(239.88*h4*1e-3/2.303));
printf("\n The outlet temperature = %.1f K",theta_dash4)
