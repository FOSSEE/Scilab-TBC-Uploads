
// Example 3-7, page 68

clear;clc; close;

// Given data
Vd=0.7;// diode drop  in volts 
V=10;// source voltage
R=1000;// resistance in ohms

// Calculations
Vl=V-Vd;// load voltage in volts
I=Vl/R;// load current in amperes
P=(V-Vl)*I;// diode power in watts
disp("Amperes",I,"Load Current=")
disp("Volts",Vl,"Load Voltage=")
disp("Watts",P,"Diode power=")




