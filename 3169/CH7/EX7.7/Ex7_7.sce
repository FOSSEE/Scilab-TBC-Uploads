//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 7.7
//Estimation of values of mutual inductance,resistance and capacitance

//given data
It=10*10^3//impulse current(in A)
Vmt=10//meter reading(in V) for full scale deflection
dibydt=10^11//rate of change of current(in A/s)

//calculation
MbyCR=Vmt/It
t=It/dibydt
f=1/(4*t)
omega=2*%pi*f
CR=10*%pi/omega
M=10^-3*CR
R=2*10^3//assume resistance(in ohm)
C=CR/R

printf('The value of mutual inductance is %d nH',M*10^9)
printf('\nThe value of resistance is %3.0e ohm',R)
printf('\nThe value of capacitance is %d pF',round(C*10^12))
