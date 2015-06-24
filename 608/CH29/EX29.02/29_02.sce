//Problem 29.02: In the parallel network of Figure 29.6, inductance, L = 100 mH and capacitance, C = 40 μF. Determine the resonant frequency for the network if (a) RL = 0 and (b) RL = 30 ohm.

//initializing the variables:
RL1 = 0; // in ohms
RL2 = 30; // in ohms
L = 0.100; // IN Henry
C = 40e-6; // IN fARADS
V = 50; //in volts

//calculation:
//for RL1
//Resonant frequency,
wr1 = (1/(L*C))^0.5
fr1 = wr1/(2*%pi)
//for RL2
//Resonant frequency,
wr2 = (1/(L*C) - ((RL2^2)/(L^2)))^0.5
fr2 = wr2/(2*%pi)

printf("\n\n Result \n\n")
printf("\n (a)Resonance frequency at RL = 0 is %.1f Hz",fr1)
printf("\n (b)Resonance frequency at RL = 30 ohm is %.1f Hz\n",fr2)