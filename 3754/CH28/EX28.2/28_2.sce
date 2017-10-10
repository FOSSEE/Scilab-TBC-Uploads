clear//

//Variables

L = 100.0 * 10**-6          //Inductance (in Henry)
C = 100.0 * 10**-12         //Capacitance (in Farad)
R = 5.0                     //Resistance (in ohm)

//Calculation

fo = 0.159 / (L * C)**0.5   //Resonant frequency (in Hertz)
Zp = L / (C*R)              //Circuit impedance at resonance (in ohm)

//Result

printf("\n Resonant frequency is  %0.3f  MHz.\nCircuit impedance at resonance is  %0.3f  kilo-ohm.",fo*10**-6,Zp*10**-3)
