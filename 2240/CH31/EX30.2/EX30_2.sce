// Grob's Basic Electronics 11e
// Chapter No. 30
// Example No. 30_2
clear; clc;
// Find the minimim and maximum value of Id and Vds if Vgs=-1.5 Volts

// Given Data

Idssmin = 2*10^-3;      // Idss(min)=2m Amp
Idssmax = 20*10^-3;     // Idss(max)=20m Amp
Vgs = -1.5;             // Voltage Gate-Source=-1.5V
Vgsoffmin = -2;         // Voltage Gate-Source(off)(min)=-2 Volts
Vgsoffmax = -8;         // Voltage Gate-Source(off)(max)=-8 Volts
Vdd = 20;               // Supply Voltage(Drain)=20 Volts
Rd = 1*10^3;            // Drain Resistance=1k Ohms

a = 1-(Vgs/Vgsoffmin);
b = 1-(Vgs/Vgsoffmax);

// Calculation using Minimum Values

Id1 = Idssmin*a*a;
disp (Id1,'The Value of Id in Amps using Minimum Values')
disp ('i.e 125 uAmps')

Vds1 = Vdd-Id1*Rd;
disp (Vds1,'The Value of Vds in Volts using Minimum Values')

// Calculation using Maximum Values

Id2 = Idssmax*b*b;
disp (Id2,'The Value of Id in Amps using Maximum Values')
disp ('i.e 13.2 mAmps')

Vds2 = Vdd-Id2*Rd;
disp (Vds2,'The Value of Vds in Volts using Maximun Values')

Vp = -Vgsoffmax;

Vdsp = Vp+Vgs;
disp (Vdsp,'The Value of Vds(p) in Volts using Maximun Values')
