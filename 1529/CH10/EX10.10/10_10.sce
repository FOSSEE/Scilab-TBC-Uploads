//Chapter 10, Problem 10, figure 10.20
clc;
tc = 100E-6;            // in s/cm
Vc = 2;                 // in V/cm
w = 5;                  // in cm ( width of one complete cycle for both waveform )
h1 = 2;                 // in cm ( peak-to-peak height of the display )
h2 = 2.5;               // in cm ( peak-to-peak height of the display )

//calculation:
T = w*tc
f = 1/T
ptpv1 = h1*Vc
Vrms1 = ptpv1/(2^0.5)
ptpv2 = h2*Vc
Vrms2 = ptpv2/(2^0.5)
phi = 0.5*360/w

printf("\n\n (a)Frequency, f = %f kHz",f/1000)
printf("\n\n (b1)r.m.s voltage of 1st waveform = %.2f V",Vrms1)
printf("\n\n (b2)r.m.s voltage of 2nd waveform = %.2f V",Vrms2)
printf("\n\n (c)Phase difference = %.0f°",phi)
