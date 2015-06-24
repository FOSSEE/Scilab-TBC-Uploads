//Problem 10.08: (For the c.r.o. square voltage waveform shown in Figure 10.15 determine (a) the periodic time, (b) the frequency and (c) the peak-to-peak voltage. The ‘time/cm’ (or timebase control) switch is on 100 μs/cm and the ‘volts/cm’ (or signal amplitude control) switch is on 20 V/cm.
//(In Figures 10.15 to 10.18 assume that the squares shown are 1 cm by 1 cm)

//initializing the variables:
tc = 100E-6; // in s/cm
Vc = 20; // in V/cm
w = 5.2; // in cm ( width of one complete cycle )
h = 3.6; // in cm ( peak-to-peak height of the display )

//calculation:
T = w*tc
f = 1/T
ptpv = h*Vc

printf("\n\n Result \n\n")
printf("\n (a)the periodic time, T = %.2E sec", T)
printf("\n (b)Frequency, f = %.0f Hz",f)
printf("\n (c)the peak-to-peak voltage = %.0f V",ptpv)