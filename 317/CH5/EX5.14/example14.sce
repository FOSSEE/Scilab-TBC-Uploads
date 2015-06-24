// find average LED current,power dissipation in series resistor
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 5-14, page 169

clear;clc; close;
	
// Given data
V=20;// ac source rms voltage in volts
Rs=680;// series resistance in ohms

// Calculations
Vp=sqrt(2)*V;// peak voltage in volts
Is1=Vp/Rs;// peak current in amperes
Is2=Is1/%pi;// average of the half-wave currnt through LED
P=(V)^2/Rs;// power dissipated in watts
disp("Amperes",Is2,"average LED current =")
disp("Watts",P,"dissipated power=")

// Result
// Average LED current is 13.1 mAmperes 
// Power dissipated is 0.588 watts.
