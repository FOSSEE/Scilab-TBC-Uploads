//Problem 10.11: For the double-beam oscilloscope displays shown in Figure 10.18 determine (a) their frequency, (b) their r.m.s. values, (c) their phase difference. The ‘time/cm’ switch is on 100 μs/cm and the ‘volts/cm’ switch on 2 V/cm.
//(In Figures 10.15 to 10.18 assume that the squares shown are 1 cm by 1 cm)

//initializing the variables:
tc = 100E-6; // in s/cm
Vc = 2; // in V/cm
w = 5; // in cm ( width of one complete cycle for both waveform )
h1 = 2; // in cm ( peak-to-peak height of the display )
h2 = 2.5; // in cm ( peak-to-peak height of the display )

//calculation:
T = w*tc
f = 1/T
ptpv1 = h1*Vc
Vrms1 = ptpv1/(2^0.5)
ptpv2 = h2*Vc
Vrms2 = ptpv2/(2^0.5)
phi = 0.5*360/w

printf("\n\n Result \n\n")
printf("\n (a)Frequency, f = %.0f Hz",f)
printf("\n (b1)r.m.s voltage of 1st waveform = %.2f V",Vrms1)
printf("\n (b2)r.m.s voltage of 2nd waveform = %.2f V",Vrms2)
printf("\n (c)Phase difference = %.0f°",phi)