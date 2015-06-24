clc();
clear;

// To calculate the temperature of surface and centre plane

t=2;                                  // Thickness of wall in ft
To=100;                               // Initial temperature of wall in degF
Tg=1000;                              // Temperature of hot gases exposed in degF
k=8;                                  // Thermal conductivity in Btu/hr-ft-degF
p=162;                                // density in lb/ft^-3
Cp=0.3;                               // Heat capacity in Btu/lb-degF
h=1.6;                                // Heat transfer coefficient in Btu/hr-ft^-2-degF
a=k/(p*Cp);                           // Thermal diffusivity

// Considering the values of a and 4at/L^2 and hl/2k, the value of Phis, Phic and Si can be obtained
Phis=0.37;
Phic=0.41;
Si=0.62;

Ta=Tg+(To-Tg)*Phis;                   // Temperature of surface in degF
printf("The temperature of surface is %d degF \n ",Ta);
Tc=Tg+(To-Tg)*Phic;                   // Temperature of center plane in degF
printf("The temperature of surface is %d degF \n ",Tc);
A=10;                                  // area of wall through which heat is absorbed
q=p*Cp*t*A*Si*(To-Tg);                 // Heat absorbed in Btu/hr
printf("The heat absorbed by wall is %d Btu",q);