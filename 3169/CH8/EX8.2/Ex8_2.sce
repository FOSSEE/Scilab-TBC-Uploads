//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 8.2
//calculation of the voltage build up at the junction

//given data
Z1=500//surge impedance(in ohm) of transmission line
Z2=60//surge impedance(in ohm) of cable
e=500//value of surge(in kV)

//calculation
tau=(Z1-Z2)/(Z2+Z1)//coefficient of reflection
Vj=(1+tau)*e

printf('The value of the voltage build up at the junction is %d kV',round(Vj))
