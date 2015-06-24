//Problem 28.07: A filter in the form of a series L–R–C circuit is designed to operate at a resonant frequency of 10 kHz. Included within the filter is a 10 mH inductance and 5 ohm resistance. Determine the bandwidth of the filter.

//initializing the variables:
R = 5; // in ohms
L = 0.010; // IN Henry
fr = 10000; // in Hz

//calculation:
wr = 2*%pi*fr
//Q-factor at resonance is given by
Qr = wr*L/R
//Since Qr = fr/(f2 - f1),
bw = fr/Qr

printf("\n\n Result \n\n")
printf("\n bandwidth of the filter is %.1f Hz\n",bw)