
// Example 3-8, page 69`

clear;clc; close;

// Given data
Rl=10;// load resistance in ohms
Rb=0.23;// bulk resistance in ohms
// diode drop=0.7 volts

// Calculations
Rt=Rl+Rb;// total resistance in ohms
Vt=10-0.7;// voltage of battery-diode drop
I=Vt/Rt;// load current
Vl=I*10;// load voltage 
Vd=10-Vl;// source voltage-load voltage
P=Vd*I;
disp("Amperes",I,"Load Current=")
disp("Volts",Vl,"Load Voltage=")
disp("Watts",P,"Diode power=")


