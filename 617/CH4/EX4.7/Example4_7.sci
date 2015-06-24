clc();
clear;

// To calculate the range in temoperatures at different depths
T1=10;                                 // Min temperature at surface in degF
T2=-10;                                // Max temperature at surface in degF
t1=24;
t2=5;                                  // Time gap in hrs
k=0.3;                                 // Thermal conductivity in Btu/hr-ft-degF
Cp=0.47;                               // Heat capacity in lb/ft-degF
y=100;                                 // Specific gravity in lb/ft^3
n1=1/t1;                               // Frequency in /hr         
Tm=(T1+T2)/2;a=k/(y*Cp);               // thermal diffusivity in ft^2
n=1/t1;                                // Frequency in /sec
x1=1;
x2=1;                                  // Depth in ft
th0=(T1-T2)/2;th1=th0*exp(-x1*sqrt(%pi*n/a));        // temperature range at 2 ft depth
th2=th0*exp(-x2*sqrt(%pi*n/a));        // Temperature range at 6 ft depth 
printf("Amplitude of tempearture at 2ft deep is %.2f degF\n",th1);
delr1=x1/2*sqrt(1/(a*%pi*n));          // Time lag at 2 ft depth
printf(" Lag of temperature wave at a depth 2 ft is %.1f hr \n",delr1);
 // To calculate the temperature at a depth of 1 ft , 5 hr after the srface temperature reaches the minimum temperature 
 r=3/(4*n);                            // Time at which minimum surface temperature occurs for the first time in hr
 r1=r+5;                               // Time ar which temperature is to be found out in degF
 th3=th0*exp(-x1*sqrt(%pi*n/a))*sin(2*%pi*r1/24-4.53);
 Tr=Tm+th3;                            // Temperature to be found out in degF
 printf(" The temperaure at 1 ft depth is %.2f degF \n",Tr);