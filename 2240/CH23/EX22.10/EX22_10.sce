// Grob's Basic Electronics 11e
// Chapter No. 22
// Example No. 22_10
clc; clear;
// An RC circuit has an R of 10 k Ohms and a C of 0.05 uF. The applied voltage for charging is 36 V. (a) Calculate the time constant. (b) How long will it take C to charge to 24 V?

C = 0.05*10^-6;     // Capacitor=0.05 uFarad
R = 10*10^3;        // Resistor=10 kOhms
V = 36;             // Applied voltage=36 Volts
v = 12;             // Voltage drops from 36 to 12 Volts
A = 2.3;            // Specific factor

T = C*R;
disp (T,'The Time Constant in Seconds')
disp ('i.e 0.5*10^-3 Sec OR 0.5 mSec')

t = A*T*log10(V/v);
disp (t,'Time required to charge Capacitor upto 24 Volts in Seconds')
disp ('i.e appox 0.549*10^-3 Sec OR 0.549 mSec')
