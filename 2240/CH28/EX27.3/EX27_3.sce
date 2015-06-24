// Grob's Basic Electronics 11e
// Chapter No. 27
// Example No. 27_3
clc; clear;
// Solve for the load voltage and current using the first, second, and third diode approximations.

// Given data

Rl = 100;       // Load resistance=100 Ohms
Rb = 2.5;       // Resistance=2.5 Ohms
Vin = 10;       // Input voltage=10 Volts
Vb = 0.7;       // Voltage=0.7 Volts


// Using first approximation

Vl1 = Vin
disp (Vl1,'The Load Voltage of First Approximation in Volts(dc)')

Il1 = Vl1/Rl;
disp (Il1,'The Load Current of First Approximation in Amps')
disp ('i.e 100 mAmps')

// Using second approximation

Vl2 = Vin-Vb
disp (Vl2,'The Load Voltage of Second Approximation in Volts')

Il2 = Vl2/Rl;
disp (Il2,'The Load Current of Second Approximation in Amps')
disp ('i.e 93 mAmps')

// Using third approximation

Il3 = (Vin-Vb)/(Rl+Rb);
disp (Il3,'The Load Current of Third Approximation in Amps')
disp ('i.e 90.73 mAmps')

Vl3 = Il3*Rl;
disp (Vl3,'The Load Voltage of Third Approximation in Volts')
