// calculate current gain for 2N4424
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 6-6, page 202

clear;clc; close;

// Given data
Rc=470;// resistance in ohms
Vbb=10;// base source voltage in volts
Vbe=0.7;// emitter diode in volts
Rb=330*10^3;// resistance in ohms 
Vce=5.45;// collector-emitter voltage in volts

// Calculations
V=Vbb-Vce;// voltage across collector-resistance in volts
Ic=V/Rc;// collector current in amperes
Ib=(Vbb-Vbe)/Rb;// current through base resistor in amperes
Bdc=Ic/Ib;// current gain
disp(Bdc,"current gain")

// Result
// current gain is 343
