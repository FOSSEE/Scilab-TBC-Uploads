//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 8.1
//calculation of surge impedance,velocity and time taken by the surge to travel to the other end

//given data
L=1.26*10^-3//inductance(in H/km)
C=0.009*10^-6//capacitance(in F/km)
l=400//length(in km) of the transmission line

//calculation
v=1/sqrt(L*C)
Xs=sqrt(L/C)
t=l/v

printf('The value of surge impedance is %3.1f ohm',Xs)
printf('\nThe value of velocity is %3.0e km/s',v)
printf('\nThe time taken by the surge to travel to the other end is %3.2f ms',t*10^3)
