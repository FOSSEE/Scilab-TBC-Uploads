//Problem 39.03: A 2000 pF capacitor has an alternating voltage of 20 V connected across it at a frequency of 10 kHz. If the power dissipated in the dielectric is 500 μW, determine (a) the loss angle, (b) the equivalent series loss resistance, and (c) the equivalent parallel loss resistance.

//initializing the variables:
P = 500E-6; // in Watt
C = 2000E-12; // in Farads
V = 20; // in Volts
f = 10000; // in Hz

//calculation: 
//power loss = w*C*V^2*tan(del)
//loss angle
del = atan(P/(2*%pi*f*V*V*C))
//for an equivalent series circuit,
//tan(del) = (Rs*w*Cs)
Cs = C
Rs = (tan(del))/(2*%pi*f*Cp)
//for an equivalent parallel circuit
//tan(del) = 1/(Rp*w*Cp)
Cp = C
Rp = 1/(2*%pi*f*Cp*tan(del))

printf("\n\n Result \n\n")
printf("\n (a)loss angle %.6f rad.",del)
printf("\n (b)series resistance %.2f ohm.",Rs)
printf("\n (c)parallel resistance %.2E ohm.",Rp)