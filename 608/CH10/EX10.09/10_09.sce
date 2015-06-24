//Problem 10.09: (For the c.r.o. display of a pulse waveform shown in Figure 10.16 the ‘time/cm’ switch is on 50 ms/cm and the ‘volts/cm’ switch is on 0.2 V/cm. Determine (a) the periodic time, (b) the frequency, (c) the magnitude of the pulse voltage.
//(In Figures 10.15 to 10.18 assume that the squares shown are 1 cm by 1 cm)

//initializing the variables:
tc = 50E-3; // in s/cm
Vc = 0.2; // in V/cm
w = 3.5; // in cm ( width of one complete cycle )
h = 3.4; // in cm ( peak-to-peak height of the display )

//calculation:
T = w*tc
f = 1/T
ptpv = h*Vc

printf("\n\n Result \n\n")
printf("\n (a)the periodic time, T = %.2E sec ",T)
printf("\n (b)Frequency, f = %.2f Hz",f)
printf("\n (c)the peak-to-peak voltage = %.2f V",ptpv)