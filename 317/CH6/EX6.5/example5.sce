// find Ib,Ic,Vce,Pd
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 6-5, page 201

clear;clc; close;

// Given data
Rc=2*10^3;// resistance in ohms
Bdc=300;// current gain
Vbb=10;// base source voltage in volts
Vbe=0.7;// emitter diode in volts
Rb=1*10^6;// resistance in ohms 
Vcc=10;// in volts
 
// Calculations
Ib=(Vbb-Vbe)/Rb;// current through base resistor in amperes
Ic=Ib*Bdc;// collector current in amperes
Vce=Vcc-(Ic*Rc);// collector-emitter voltage in volts
Pd=Vce*Ic;// collector power dissipation in watts
disp("Amperes",Ib,"base current =")
disp("Amperes",Ic,"collector current =")
disp("Volts",Vce,"collector-emitter voltage =")
disp("watts",Pd,"dissipated power=")

// Result
// Ib is 9.3 microAmperes,Ic is 2.79 mAmperes,Vce is 4.42 volts,Pd is 12.3 mWatts