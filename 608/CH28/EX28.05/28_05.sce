//Problem 28.05: A series L–R–C circuit has a sinusoidal input voltage of maximum value 12 V. If inductance, L = 20 mH, resistance, R = 80 ohm, and capacitance, C = 400 nF, determine (a) the resonant frequency, (b) the value of the p.d. across the capacitor at the resonant frequency, (c) the frequency at which the p.d. across the capacitor is a maximum, and (d) the value of the maximum voltage across the capacitor.

//initializing the variables:
R = 80; // in ohms
C = 0.4e-6; // IN fARADS
L = 0.020; // IN Henry
Vm = 12; //in volts

//calculation:
//Resonant frequency,
fr = 1/(2*%pi*((L*C)^0.5))
wr = 2*%pi*fr
//Q = wr*L/R
Q = wr*L/R
Vc = Q*Vm
//the frequency f at which VC is a maximum value,
f = fr*(1 - (1/(2*Q*Q)))^0.5
//the maximum value of the p.d. across the capacitor is given by:
Vcm = Vc/(1 - (1/(2*Q))^2)^0.5

printf("\n\n Result \n\n")
printf("\n (a)The resonant frequency is %.1f Hz ",fr)
printf("\n (b)the value of the p.d. across the capacitor at the resonant frequency %.2f V ",Vc)
printf("\n (c)the frequency f at which Vc is a maximum value, is %.1f Hz ",f)
printf("\n (d)the maximum value of the p.d. across the capacitor is %.1f V ",Vcm)