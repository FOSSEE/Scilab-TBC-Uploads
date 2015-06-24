// Grob's Basic Electronics 11e
// Chapter No. 28
// Example No. 28_15
clc;clear;
// Calculate Ie and Vc

// Given data

Vee = 6;        // Supply voltage at emitter=6 Volts
Vcc = 15;       // Supply voltage at collector=15 Volts
Vbe = 0.7;      // Base-Emmiter Voltage=0.7 Volts
Rc = 1.5*10^3;  // Collector resistance=1.5 kOhms
Re = 1*10^3;    // Emitter resistance=1 kOhms

Ie = (Vee-Vbe)/Re;
disp (Ie,'The Emitter current in Amps')
disp ('i.e 5.3 mAmps')

Ic = Ie;        // Ic =~ Ie

Vc = Vcc-Ic*Rc;
disp (Vc,'The Collector voltage in Volts')
