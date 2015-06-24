//Problem 15.22: A coil of negligible resistance and inductance 100 mH is connected in series with a capacitance of 2 μF and a resistance of 10  across a 50 V, variable frequency supply. Determine (a) the resonant frequency, (b) the current at resonance, (c) the voltages across the coil and the capacitor at resonance, and (d) the Q-factor of the circuit.

//initializing the variables:
L = 100E-3; // in Henry
C = 2E-6; // in Farads
R = 10; // in ohms
V = 50; // in Volts

//calculation:
fr = 1/(2*%pi*((L*C)^0.5))
//At resonance, XL = Xc and impedance Z = R
I = V/R
VL = I*(2*%pi*fr*L)
Vc = I/(2*%pi*fr*C)
Q = VL/V

printf("\n\n Result \n\n")
printf("\n (a)the resonant frequency = %.1f Hz",fr)
printf("\n (b)Current, I = %.0f A",I) 
printf("\n (c)Voltage across coil at resonance is %.0fV and Voltage across capacitance at resonance is %.0fV",VL, Vc) 
printf("\n (d)At resonance, Q-factor = %.2f",Q)