// Implementation of example 7.9
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

//Mass flow rate of air entering the device m1, Pressure p1, Temperature T1
//Mass flow rate of air exiting through stream1 m2 and stream2 m3

m1 = 2;//kg/s
p1 = 4;//bar
T1 = 300;//K
p2 = 1;//bar
p3 = 1;//bar
T2 = 330;//K
T3 = 270;//K
cp = 1.005;//kJ/kg K
R = 0.287;//KJ/Kg K
m2 = m1/2;
m3 = m2;
//s21 = s2 - s1
s21 = cp*log(T2/T1)-R*log(p2/p1);
s31 = cp*log(T3/T1)-R*log(p3/p1);
Sgen = m2*s21 + m3*s31;
printf('Sgen = %0.3f kW/K \nSince Sgen > 0, the device is possible',Sgen);
//end