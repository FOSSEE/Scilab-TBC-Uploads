//Problem 15.23: A filter in the form of a series L–R–C circuit is designed to operate at a resonant frequency of 5 kHz. Included within the filter is a 20 mH inductance and 10 ohm resistance. Determine the bandwidth of the filter.

//initializing the variables:
L = 20E-3; // in Henry
R = 10; // in ohms
fr = 5000; // in Hz

//calculation:
Qr = (2*%pi*fr)*L/R
bw = fr/Qr

printf("\n\n Result \n\n")
printf("\n Bandwidth, (f2-f1) = %.1f Hz",bw)