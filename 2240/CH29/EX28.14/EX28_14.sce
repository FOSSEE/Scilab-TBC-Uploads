// Grob's Basic Electronics 11e
// Chapter No. 28
// Example No. 28_14
clc; clear;
// For the pnp transistor, solve for Vb, Ve, Ic, Vc, and Vce.

// Given data

R1 = 33*10^3;     // Resistor1=33 kOhms
R2 = 6.2*10^3;    // Resistor2=6.2 kOhms
Rc = 2*10^3;      // Collector resistance=2 kOhms
Re = 500;         // Emitter resistance=500 Ohms
Vcc = 12;         // Supply voltage=12 Volts
Vbe = 0.7;        // Base-Emmiter Voltage=0.7 Volts


Vb = -Vcc*(R2/(R1+R2));
disp (Vb,'The Base Voltage in Volts')
disp ('Appox -1.9 Volts')

Ve = Vb-(-Vbe);
disp (Ve,'The Emitter Voltage in Volts')
disp ('Appox -1.2 Volts')

Ic = -(Ve/Re);     // Ic =~ Ie
disp (Ic,'The Collector Current in Amps')
disp ('Appox 2.4 mAmps')

Vc = -Vcc+(Ic*Rc)
disp (Vc,'The Collector Voltage in Volts')

Vce = -Vcc+(Ic*(Rc+Re));
disp (Vce,'The Collector-Emitter Voltage in Volts');
