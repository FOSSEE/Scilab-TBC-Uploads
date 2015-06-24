//Problem 10.10: A sinusoidal voltage trace displayed by a c.r.o. is shown in Figure 10.17. If the ‘time/cm’ switch is on 500 μs/cm and the ‘volts/cm’ switch is on 5 V/cm, find, for the waveform, (a) the frequency, (b) the peak-to-peak voltage, (c) the amplitude, (d) the r.m.s. value.
//(In Figures 10.15 to 10.18 assume that the squares shown are 1 cm by 1 cm)

//initializing the variables:
tc = 500E-6; // in s/cm
Vc = 5; // in V/cm
w = 4; // in cm ( width of one complete cycle )
h = 5; // in cm ( peak-to-peak height of the display )

//calculation:
T = w*tc
f = 1/T
ptpv = h*Vc
Amp = ptpv/2
Vrms = Amp/(2^0.5)

printf("\n\n Result \n\n")
printf("\n (a)Frequency, f = %.0f Hz",f)
printf("\n (b)the peak-to-peak voltage = %.0f V",ptpv)
printf("\n (c)Amplitude = %.1f V",Amp)
printf("\n (d)r.m.s voltage = %.2f V",Vrms)