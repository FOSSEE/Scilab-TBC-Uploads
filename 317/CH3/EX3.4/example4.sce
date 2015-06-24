
// Example 3-4, page 65`

clear;clc; close;

// Given data
// refer to the diagram, thevenize the circuit to the left of the diode.
// looking at the diode back toward the source,we see a voltage divider with 6 killo-ohms and 3 killo-ohms.
R=2000;// thevenin resistance in ohms 
V=12;// thevenin voltage in volts

// Calculations
disp("Using Thevenin Thm")
// we have a series circuit and the diode is forward biased.
// visualize the diode as a closed switch
I=V/3000; // load current in amperes
V(1)=I*1000;// load voltage
disp("Amperes",I,"Load Current=")
disp("Volts",V(1),"Load Voltage=")



