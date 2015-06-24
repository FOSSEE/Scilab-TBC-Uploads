
clear;
clc;

printf("\t Example 2.8\n");

P=0.1; //dissipating power,W
D=0.0036; //outer diameter of cylinder, m
l=0.01; //length of cylinder, m
T=308; // temperature of air in the cabinet,K
h=13; // convection coefficient, W/(m^2*K)
e=0.9;
A=1.33*10^-4; //area of ressistor's surface, m^2

Tm=(T+323)/2; // ressistor's temperature at 50 K
Hr=4*5.67*10^-8*Tm^3*e; // radiative heat transfer coefficient,W/(m^2*K)


Rteq=1/(A*(Hr+h));
Tres=T+P*Rteq;
//we guessed a ressistor's temperature of 323K in finding Hr,recomputing with this higher temperature,we have Tm=327K and Hr=7.17W/(m^2*K). if we repeat the rest of calculations, we get a new value Tres=345.3K, since the use of hr is an approximation, we should check its applicability: 1/4*((345.3-308)/327)^2=0.00325<<1, in this case, the approximation is a very good one
Tr=Tres-273.06;
printf("\t temperature of ressistor is : %.2f K\n",Tr);
printf("\t  since 1/4*(temperature diffference/mean temperature)= 1/4*((72.3-35)/327)^2=0.00325<<1, in this case, the approximation is a very good one.");
//End