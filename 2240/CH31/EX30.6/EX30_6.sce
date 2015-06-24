// Grob's Basic Electronics 11e
// Chapter No. 30
// Example No. 30_6
clear; clc;
// Calculate the Voltage Gain Av and Output Voltage Vo

// Given Data

Rd = 1.5*10^3;      // Drain Resistor=1.5 kOhms
Rl = 10*10^3;       // Load Resistor=10 kOhms
Idss = 10*10^-3;    // Idss=10 mAmps
Vgs = -1;           // Voltage Gate-Source=-1 Volts
Vgsoff = -4;        // Voltage Gate-Source(off)=-4 Volts
Vin = 0.2;          // Input Voltage=0.2 Volts(p-p)

gmo = 2*Idss/(-Vgsoff);

gm = gmo*(1-(Vgs/Vgsoff));

rl = (Rd*Rl)/(Rd+Rl);

Av = gm*rl;
disp (Av,'The Voltage Gain Av is')
disp ('Appox 4.875')

Vo = Av*Vin
disp (Vo,'The Output Voltage Vo in Volts(p-p)')
disp ('Appox 0.975 Volts(p-p)')
