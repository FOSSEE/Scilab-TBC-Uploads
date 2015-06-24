//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 9.4
//calculation of capacitance and tandelta of bushing

//given data
R3=3180//resistance(in ohm)
R4=636//resistance(in ohm)
Cs=100//standard condenser(in pF)
f=50//frequency(in Hz)
C3=0.00125*10^-6//capacitance(in farad)

//calculation
omega=2*%pi*f
Cx=R3*Cs/R4//unknown capacitance
tandelta=omega*C3*R3

printf('The capacitance is %d pF',Cx)
printf('\nThe value of tandelta of bushing is %3.5f',tandelta)
