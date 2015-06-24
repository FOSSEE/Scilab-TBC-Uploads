clear;
clc;
printf("\t\t\tchapter1_example4\n\n\n");
// determining average film conductance
D=2.43/100; // diameter in meter
L=20/100; // length in meter
A=3.14*D*L; // cross-sectional area in sq.m
cp=4200; // specific heat of water in J/kg.K
T_b2=21.4; // temperature of bulk fluid in degree celsius
T_in=20; // temperature of inlet water in degree celsius
T_w=75; // temperature of wall in degree celsius
Q=500; // volumetric flow rate in cc/s
density=1000; // density of water in kg/cu.m
m=Q*density/10^6; // mass flowa rate in kg/s
printf("\nThe mass flow rate is %.1f kg/s",m);
// using definition of specific heat and Newton's law of cooling
hc=m*cp*(T_b2-T_in)/(A*(T_w-T_in));
printf("\nThe average film conductance is %d W/sq.m. K",hc);
