// Grob's Basic Electronics 11e
// Chapter No. 18
// Example No. 18_1
clear; clc;
// If a R=30ohms and Xc=40ohms are in series with 100V applied, find the following: Zt, I, Vr, Vc and Theta z. What is the phase angle between Vc and Vr with respect to I? Prove that the sum of the series voltage drop equals the applied voltage Vt

// Given data

R = 30;     // Resistance=30 Ohms
Xc = 40;    // Capacitive Reactance=40 Ohms
Vt = 100;   // Applied Voltage=100 Volts

R1 = R*R;
Xc1 = Xc*Xc;

Zt = sqrt(R1+Xc1);
disp (Zt,'Zt in Ohms');

I = (Vt/Zt);
disp (I, 'I in Ampers');

Vr = I*R;
disp (Vr, 'Voltage Across Resistor in Volts');

Vc = I*Xc;
disp (Vc, 'Voltage Across Capacitive Reactance in Volts');

Oz = atand(-(Xc/R))
disp (Oz, 'Theta z is');

//Prove that the sum of the series voltage drop equals the applied voltage Vt

Vt = sqrt((Vr*Vr)+(Vc*Vc));
disp (Vt, 'Sum of Voltage Drop is Equal to Applied Voltage of 100V in Volts');
