clc;clear;
//Example 19.2
//calculation of current

//given values
e=1.6*10^-19;
kT=.026*e;//temp eqvlnt at room temp
Io=2*10^-7;//current flowing at room temp in A
V=.1;//forward bias voltage in volts

//calculation
I=Io*(%e^(e*V/kT)-1);//in Ampere
disp(I*10^6,'current flowing when forward bias applied(in microampere)is');
