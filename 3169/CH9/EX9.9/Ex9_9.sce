//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 9.9
//calculation of maximum and minimum value of capacitance and tandelta

//given data
R3min=100//minimum value of R3 resistance(in ohm)
R3max=11100//maximum value of R3 resistance(in ohm)
R4min=100//minimum value of R4 resistance(in ohm)
R4max=1000//maximum value of R4 resistance(in ohm)
Cs=100*10^-12//standard capacitance(in farad)
C3min=1*10^-9//minimum value of C3 capacitance(in farad)
C3max=1.11*10^-6//maximum value of C3 capacitance(in farad)
f=50//frequency(in Hz)

//calculation
Cxmax=R3max*Cs/R4min
Cxmin=R3min*Cs/R4max
omega=2*%pi*f
tandeltamax=omega*R3max*C3max
tandeltamin=omega*R3min*C3min

printf('The maximum value of capacitance is %3.1f nF',Cxmax*10^9)
printf('\nThe minimum value of capacitance is %d pF',Cxmin*10^12)
printf('\nThe maximum value of tandelta is %3.2f',tandeltamax)
printf('\nThe minimum value of tandelta is %3.2e',tandeltamin)
