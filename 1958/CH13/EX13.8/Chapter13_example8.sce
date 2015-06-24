clc
clear
//Input data
L=(20*10^-3)//Inductance in H
Q=8//Q factor
f=1000//Frequency in Hz

//Calculations
R=(2*3.14*f*L)/Q//Resistance in ohms
C=(1/((2*3.14*f)^2*L))/10^-6//Capacitance in microF

//Output
printf('Capacitance and resistance of coil is %3.2f micro F and %3.1f ohms respectively',C,R)
