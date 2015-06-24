//Problem 41.11: A 0–3 kohm rheostat is connected across the output of a signal generator of internal resistance 500 ohm. If a load of 2 kohm is connected across the rheostat, determine the insertion loss at a tapping of (a) 2 kohm, (b) 1 kohm.

//initializing the variables:
r = 500; // in ohm
Rhm = 3000; // in ohm
RL = 2000; // in ohm
r1 = 2000; // in ohm
r2 = 1000; // in ohm
E = 1; // in volts (lets say)

//calculation:
//Without the rheostat in the circuit the voltage across the 2 kohm load, VL
VL = (RL/(RL + r))*E
//voltage V2 with 2kohm tapping
V2 = ((RL*r1/(r1 + RL))/((RL*r1/(r1 + RL)) + Rhm - r1 + r))*E
rv1 = VL/V2; // ratio of currents
//insertion loss 
il1 = 20*log10(rv1)
//voltage V1 with 1kohm tapping
V1 = ((RL*r2/(r2 + RL))/((RL*r2/(r2 + RL)) + Rhm - r2 + r))*E
rv2 = VL/V1; // ratio of currents
//insertion loss 
il2 = 20*log10(rv2)

printf("\n\n Result \n\n")
printf("\n insertion loss for 2kohm tap is %.2f dB",il1)
printf("\n insertion loss for 1kohm tap is %.2f dB",il2)