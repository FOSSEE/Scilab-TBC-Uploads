//Problem 15.20: A coil of inductance 80 mH and negligible resistance is connected in series with a capacitance of 0.25 μF and a resistor of resistance 12.5 ohms across a 100 V, variable frequency supply. Determine (a) the resonant frequency, and (b) the current at resonance. How many times greater than the supply voltage is the voltage across the reactances at resonance?

//initializing the variables:
L = 80E-3; // in Henry
C = 0.25E-6; // in Farads
R = 12.5; // in ohms
V = 100; // in Volts

//calculation:
fr = 1/(2*%pi*((L*C)^0.5))
//At resonance, XL = Xc and impedance Z = R
I = V/R
VL = I*(2*%pi*fr*L)
Vc = I/(2*%pi*fr*C)
Vm = VL/V

printf("\n\n Result \n\n") 
printf("\n (a)the resonant frequency = %.1f Hz",fr)
printf("\n (b)Current, I = %.0f A",I)
printf("\n (b)Voltage magnification at resonance = %.3f V",Vm)