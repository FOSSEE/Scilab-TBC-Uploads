clc();
clear;

// To calculate the average film coefficient of heat transfer 

D=0.0752;                               // Outer diameter in ft
T1=61.4;                                // Pipe surface temperature in degF
T2=69.9;                                // Air temperature in degF
Tf=(T1+T2)/2;                           // Film temperature at whih physical properties is to be measured
delT=T1-T2;
rho=1.94;                               // Density in slug/ft^3 , 62.3/32.2
u=0.0780;                               // viscosity in slug/ft-hr , 2.51/32.2
Cp=1*32.2;                              // heat capacity in Btu/slug-ft
k=0.340;                                // thermal conductivity in Btu/hr-ft-degF
v=7*3600;                               // velocity in ft/sec

Nre=D*v*rho/u;                          // Reynolds number
Npr=u*Cp/k;                             // Prandtls number
Nnu=0.023*Nre^.8*Npr^.4;
h=Nnu*k/D;                              // heat transfer coefficient 
printf("The average film coefficient of heat transfer is %.d Btu/hr-ft^2-degF",h);