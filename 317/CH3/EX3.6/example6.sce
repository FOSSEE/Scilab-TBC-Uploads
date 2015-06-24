
// Example 3-6, page 67`

clear;clc; close;

// Given data
// thevenize the circuit to the left of the diode.
// looking at the diode back toward the source,we see a voltage divider with 6 killo-ohms and 3 killo-ohms.
R=2000;// thevenin resistance in ohms 
V(1)=12;// thevenin voltage in volts

// Calculations
disp("Using Thevenin Thm")
V(2)=0.7;// diode voltage in volts
I=(V(1)-V(2))/3000// load current in amperes
P=V(2)*I // diode power in watts
V=I*1000// load voltage in volts
disp("Amperes",I,"Load Current=")
disp("Volts",V,"Load Voltage=")
disp("Watts",P,"Diode power=")


