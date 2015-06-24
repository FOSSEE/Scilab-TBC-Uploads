// find collector-emmiter voltage 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 6-7, page 204

clear;clc; close;

// Given data
Rb=470*10^3;// resistance in ohms
Vbe=0;// as emmiter diode is ideal
Bdc=100;// current gain
Vbb=15;// base source voltage in volts
Rc=3.6*10^3;// resistance in ohms
Vcc=15;// collector-supply voltage in volts 

// Calculations
Ib=(Vbb-Vbe)/Rb;// current through base resistor in amperes
Ic=Ib*Bdc;// collector current in amperes
Vce=Vcc-(Ic*Rc);// collector-emitter voltage in volts
disp("Volts",Vce,"collector-emitter voltage =")

// Result
// collector-emmiter voltage is 3.52 Volts
