clc;
clear;
printf("\t\t\tChapter6_example5\n\n\n");
// Determination for the power required for heating and the wall temperature at the outlet. 
// The liquid properties are evaluated at the mean temperature of (80 + 20)/2 = 50°C.
// specifications of 1 standard type K copper water tubing from appendix table F2
OD = 2.858/100; // outer diameter in m 
ID = 2.528/100; // inner diameter in m 
A = 5.019e-4; // cross sectional area in sq.m
// 1 oz = 2.957e-5 m^3
Q=80*2.957e-5/120; // The volume flow rate of water (at 20°C) in cu.m/s
printf("\nThe volume flow rate of water (at 20°C) is %.2e cu.m/s",Q);
p_20= 1.000*1000; // density of water at 20°C in kg/cu.m
// properties of water at 50°C from appendix table C11
p_50= 0.990*(1000); // density in kg/m3 
cp= 4181; // specific heat in J/(kg*K) 
v = 0.586e-6; // viscosity in sq.m/s 
kf = 0.640; // thermal conductivity in W/(m.K) 
a = 1.533e-7; // diffusivity in sq.m/s 
Pr = 3.68; // Prandtl number
mass_flow=p_20*Q; // mass flow rate through the tube in kg/s
printf("\nmass flow rate through the tube is %.4f kg/s",mass_flow);
L=3; //  length of tube in m
As=%pi*ID*L;
Tbo=80; // final temperature in °C
Tbi=20; // initial temperature in °C
qw=mass_flow*cp*(Tbo-Tbi)/(As);
q=qw*As;
A=%pi*(ID/2)^2;
printf("\nThe power required in %.3e W/sq.m = %d W",qw,q);
V=mass_flow/(p_50*A); // average velocity at 50 °C
printf("\nThe average velocity at 50°C is %.2e m/s",V);
Re=(V*ID)/v; // Reynold's Number
printf("\nThe Reynolds Number for the flow is %d",Re);
// The flow is laminar so we can use  Figure 6.12 to obtain the information needed on Nusselt number and to find hz
inv_Gz=L/(Re*ID*Pr); // The inverse Graetz number at tube end, based on 50°C conditions
printf("\nThe inverse Graetz number at tube end, based on 50°C conditions is %.4f",inv_Gz);
Nu=6.9; //value of corresponding Nusselts Number from figure 6.12
hz=(Nu*kf)/ID;
printf("\nThe local convection coefficient is %.1f W/(sq.m.K)",hz);
Two=(qw/hz)+Tbo; // The outlet wall temperature in °C
printf("\nThe outlet wall temperature is %d °C",Two);
