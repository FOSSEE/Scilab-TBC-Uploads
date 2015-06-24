//Problem 39.01: The equivalent series circuit for a particular capacitor consists of a 1.5 ohm resistance in series with a 400 pF capacitor. Determine for the capacitor, at a frequency of 8 MHz, (a) the loss angle, (b) the power factor, (c) the Q-factor, and (d) the dissipation factor.

//initializing the variables:
Rs = 1.5; // in ohms
Cs = 400E-12; // in Farads
f = 8E6; // in Hz

//calculation: 
//for a series equivalent circuit,
//tan(del) = Rs*w*Cs
//loss angle,
del = atan(Rs*Cs*(2*%pi*f))
//power factor
pf = cos(del)
//the Q-factor
Q = 1/tan(del)
//dissipation factor,
D = 1/Q

printf("\n\n Result \n\n")
printf("\n (a)loss angle %.3f rad.",del)
printf("\n (b)power factor %.3f rad.",del)
printf("\n (c)Q-factor is %.2f ",Q)
printf("\n (d)dissipation factor %.3f rad.",D)