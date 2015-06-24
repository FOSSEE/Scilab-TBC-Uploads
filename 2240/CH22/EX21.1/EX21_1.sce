// Grob's Basic Electronics 11e
// Chapter No. 21
// Example No. 21_1
clc; clear
// If a R=30 ohms and Xl=40 ohms are in series with 100V applied, find the following: Zt, I, Vr, Vl and Theta z. What is the phase angle between Vl and Vr with respect to I? Prove that the sum of the series voltage drop equals the applied voltage Vt

// Given data

R = 30;     // Resistance=30 Ohms
Xl = 40;    // Inductive reactance=40 Ohms
Vt = 100;   // Applied voltage=100 Volts


R1 = R*R;
Xl1 = Xl*Xl;

Zt = sqrt(R1+Xl1);
disp (Zt,'Zt in ohms');

I = (Vt/Zt);
disp (I, 'I in Ampers');

Vr = I*R;
disp (Vr, 'Vr in Volts');

Vl = I*Xl;
disp (Vl, 'Vl in Volts');

Oz = atand(Xl/R);
disp (Oz, 'Theta z in degree');

//Prove that the sum of the series voltage drop equals the applied voltage Vt

Vt = sqrt((Vr*Vr)+(Vl*Vl));
disp (Vt, 'Sum of Voltage Drop is Equal to Applied Voltage 100V');
