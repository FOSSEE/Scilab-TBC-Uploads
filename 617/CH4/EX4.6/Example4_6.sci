clc();
clear;

// To calculate the range in temperatures at different depths
T1=-15;                                 // Min temperature at surface in degF
T2=25;                                  // Max temperature at surface in degF
t=24;                                   // time gap in hrs
k=1.3;                                  // thermal conductivity in Btu/hr-ft-degF
Cp=0.4;                                 // heat capacity in lb/ft-degF
y=126.1;                                // specific gravity in lb/ft^3
n=1/t;                                  // frequency in /hr         
Tm=(T1+T2)/2;
a=k/(y*Cp);                             // thermal diffusivity in ft^2

x1=2;
x2=6;
th0=(T1-T2)/2;
th1=th0*-exp(-x1*sqrt(%pi*n/a));        // temperature range at 2 ft depth
th2=th0*-exp(-x2*sqrt(%pi*n/a));        // temperature range at 6 ft depth 
printf("Amplitude of tempearture at 2ft deep is %.2f degF\n",th1);
printf(" Amplitude of tempearture at 6ft deep is %.2f degF\n",th2);
printf(" At a depth of 2ft , temperature varies from 4.78 degF to 5.22 degF and at a depth of 6 ft, temperature remains constant at 5 degF");
delr1=x1/2*sqrt(1/(a*%pi*n));          // time lag at 2 ft depth
delr2=x2/2*sqrt(1/(a*%pi*n));          // time lag at 6 ft depth
printf(" Lag of temperature wave at a depth 2 ft is %.1f hr \n",delr1);
printf(" Lag of temperature wave at a depth 6 ft is %.1f hr \n",delr2);