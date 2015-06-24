// Grob's Basic Electronics 11e
// Chapter No. 27
// Example No. 27_13
clc; clear;
// Calculate Is, Il and Iz for (a)Rl=200 ohms; (b)Rl=500 ohms.

// Given data

Vin = 16;       // Vin=16 Volts given
Vz = 10;        // Vz=10 Volts given
Rs = 100;       // Source Resistance = 100 ohms given
Rla = 200;      // Load Resistance A = 200 ohms given
Rlb = 500;      //Load Resistance B = 500 ohms given

// For Rl 200 ohms

Is = (Vin-Vz)/Rs;
disp (Is,'The Source Current in Amps.')
disp ('i.e 60 mAmps')

Ila = Vz/Rla;
disp (Ila,'The Load Current for 200 ohms Load in Amps.')
disp ('i.e 50 mAmps')

Iza = Is-Ila
disp (Iza,'The Zener Current for 200 ohms Load in Amps.')
disp ('i.e 10 mAmps')

// For Rl 500 ohms

Ilb = Vz/Rlb;
disp (Ilb,'The Load Current for 500 ohms Load in Amps.')
disp ('i.e 20 mAmps')

Izb = Is-Ilb
disp (Izb,'The Zener Current for 500 ohms load in Amps.')
disp ('i.e 40 mAmps')
