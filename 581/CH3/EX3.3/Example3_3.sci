
clear;
clc;

printf("\t Example 3.3\n");

T1=293; // Entering Temperature of Water, K
T2=313; //Exit Temperature of water, K
m=25/60;//Condensation rate of steam, kg/s
T3=333; // Condensation Temperature,K
A=12; //area of exchanger, m^2
h=2358.7*10^3; //latent heat, J/kg

U=(m*h)/(A*((T2-T1)/log((T3-T1)/(T3-T2))))+0.6;
printf("\t Overall heat transfer coefficient is : %.0f W/(m^2*K)\n",U);

Mh=(m*h)/(4174*(T2-T1));
printf("\t required flow of water is : %.2f kg/s\n",Mh);
//End