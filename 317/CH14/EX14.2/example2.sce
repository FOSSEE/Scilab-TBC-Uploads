// calculate the circuit's output voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 14-2, page 482

clear; clc; close;

// Given data
// D-MOSFET amplifier
Vgsoff=-2 ;// gate-source cutoff voltage in volts
Idss=4*10^-3 ;// maximum drain current in amperes
gmo=2000*10^-6 ;// in seimens
Vdd=15; // in volts from the figure
Rd=2*10^3;// in ohms from the figure
Rl=10*10^3;// in ohms from the figure
Vin=20*10^-3 ;// input voltage in volts

// Calculations
Vds=Vdd-(Idss*Rd) ;// drain source voltage in volts
rd=(Rd*Rl)/(Rd+Rl) ;// ac drain resistance in ohms
gm=gmo ; // as Vgs=0 
Av=gm*rd ;// amplifier's voltage gain 
Vout=Av*Vin; // in volts
disp("Volts ",Vout,"output voltage=")

// Result
// Output voltage is 66.8 mVolts