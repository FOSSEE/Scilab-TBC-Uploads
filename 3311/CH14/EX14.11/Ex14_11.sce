// chapter 14
// example 14.11
// Determine the firing angle, power factor, active power and reactive power at rated speed and its 10 % and their ratio
// page-886-887
clear;
clc;
// given
P=100; // in kW (power rating of motor)
N=1000; // in rpm
Ea=460; // in V
I=300; // in A
E=415; // in V (3 phase input voltage)
neta=10; // in % (% of rated speed for new speed)
// calculate
P=P*1E3;
Em=sqrt(2/3)*E; // calculation of peak value of phase voltage
// since Ea=(3*sqrt(3)*Em/%pi)*cosd(alpha), therefore we get
alpha1=acosd((Ea/Em)*(%pi/(3*sqrt(3))));
PF1=cosd(alpha1);
Ea_alpha=(neta/100)*Ea;
alpha2=acosd((Ea_alpha/Em)*(%pi/(3*sqrt(3))));
PF2=cosd(alpha2);
Ia=P/Ea;
I=sqrt(2/3)*Ia;
P_active1=sqrt(3)*E*I*cosd(alpha1);
P_reactive1=sqrt(3)*E*I*sind(alpha1);
P_active2=sqrt(3)*E*I*cosd(alpha2);
P_reactive2=sqrt(3)*E*I*sind(alpha2);
ratio=P_reactive2/P_reactive1;
printf("\nAt rated speed, the firing angle is \t alpha=%.2f degree and the power factor is \t PF=%.2f",alpha1,PF1);
printf("\n\nAt %.f %% rated speed, the firing angle is \t alpha=%.2f degree and the power factor is \t PF=%.3f",neta,alpha2,PF2);
printf("\n\nAt rated speed, the active power is \t P_active=%.1f kW and reactive power is \t P_reactive=%.2f kVAR",P_active1*1E-3,P_reactive1*1E-3);
printf("\n\nAt %.f %% rated speed, the active power is \t P_active=%.2f kW and reactive power is \t P_reactive=%.2f kVAR",neta,P_active2*1E-3,P_reactive2*1E-3);
printf("\n\nThe ratio of reactive power at  %.f %% rated speed and rated speed is %.2f",neta,ratio);
// Note: The answer vary slightly due to precise calculations