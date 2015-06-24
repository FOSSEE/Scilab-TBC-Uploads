// Grob's Basic Electronics 11e
// Chapter No. 27
// Example No. 27_7
clc; clear;
// Assume the transformer turns ratio Np:Ns = 4:1 in Fig. 27–21 a and 2:1 in Fig. 27–22a. Compare Vripple and Vdc if C = 500 uF and Rl = 250.
    
// Given data

A1 = 4/1;           // Turns ratio Np:Ns=4:1
B1 = 1/4;           // Turns ratio Ns:Np=1:4
A2 = 2/1;           // Turns ratio Np:Ns=2:1
B2 = 1/2;           // Turns ratio Ns:Np=1:2
Vp = 120;           // Primary voltage=120 Vac
Vb = 0.7;           // 
t1 = 16.67*10^-3;   // Charging Time of Capacitor of Turns ratio Np:Ns=4:1=16.67 mSec
t2 = 8.33*10^-3;    // Charging Time of Capacitor of Turns ratio Np:Ns=4:1=8.33 mSec
Rl = 250;           // Load resistance=250 Ohms
C = 500*10^-6;      // Capacitor=500 uFarad

// Calculations for Turns Ratio Np:Ns=4:1

Vs1 = B1*Vp;
Vspk1 = Vs1*1.414;
Vopk1 = Vspk1 - Vb;
D = -t1/(Rl*C);

Vrp1 = Vopk1*(1-(%e^D));
disp (Vrp1,'The Ripple Voltage for Turns Ratio Np:Ns=4:1 in Volts(p-p)')
disp ('Appox 5.21 Volts(p-p)')

Vdc1 = Vopk1-(Vrp1/2);
disp (Vdc1,'The DC Voltage for Turns Ratio Np:Ns=4:1 in Volts')
disp ('Appox 39.12 Volts')

// Calculations for Turns Ratio Np:Ns = 2:1

Vs2 = B2*Vp;
V2 = Vs2/2;
V2pk2 = V2*1.414
Vopk2 = V2pk2 - Vb;
E = -t2/(Rl*C);

Vrp2 = Vopk2*(1-(%e^E));
disp (Vrp2,'The Ripple Voltage for Turns Ratio Np:Ns=2:1 in Volts(p-p)')
disp ('Appox 2.69 Volts(p-p)')

Vdc2 = Vopk2-(Vrp2/2);
disp (Vdc2,'The DC Voltage for Turns Ratio Np:Ns=2:1 in Volts')
disp ('Appox 40.38 Volts')
