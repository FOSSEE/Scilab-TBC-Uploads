//Problem 41.15: A generator having an internal resistance of 500 ohm is connected to a 100 ohm load via an impedance-matching resistance pad as shown in Figure 41.33. Determine (a) the values of resistance R1 and R2, (b) the attenuation of the pad in decibels, and (c) its insertion loss.

//initializing the variables:
r = 500; // in ohm
RL = 100; // in ohm
E = 1; // in volts (lets say)

//calculation:
//res.
R1 = (r*(r - RL))^0.5
R2 = (r*RL^2/(r - RL))^0.5
//current I1
I1 = E/(r + R1 + R2*RL/(RL + R2))
//current I2
I2 = (R2/(R2 + RL))*I1
//input power
P1 = r*I1^2
//output power
P2 = RL*I2^2
//attenuation
attn = 10*log10(P1/P2)
//Load current, IL
IL = E/(r + RL)
//voltage, VL
VL = IL*RL
//voltage, V1
V1 = E - I1*r
//voltage, V2
V2 = V1 - I1*R1
//insertion loss
il = 20*log10(VL/V2)

printf("\n\n Result \n\n")
printf("\n R1 = %.1f ohm and R2 = %.1f ohm ",R1,R2)
printf("\n attenuation is %.2f dB ",attn)
printf("\n In decibels, the insertion loss is %.2f dB ",il)