// Example 4.5: drain resisitance
clc, clear
Id=0.4; // drain current in mili-ampere
Vd=1; // drain voltage in volts
Vs=-5; // dc voltage in volts
Vss=-3; // dc voltage in volts
Vdd=5; // dc voltage in volts
MuCox=20; // in micro-ampere/volts
W=400; // in micro-metre
l=10; // in micro-metre
Id=((1/2)*(MuCox)*(W/l));
Rs=(Vss-Vs)/(Id*10^-3);
Rd=(Vdd-Vd)/(Id*10^-3);
disp("The values of the resistances are as follows : ");
disp("Resistance Rs is "+string(Rs)+" Kohm");
disp("Resistance Rd is "+string(Rd)+" Kohm");
