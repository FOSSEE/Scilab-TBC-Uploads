//Chapter 10, Problem 9, figure 10.19
clc;
tc = 500e-6;            // in s/cm
Vc = 5;                 // in V/cm
w = 4;                  // in cm ( width of one complete cycle )
h = 5;                  // in cm ( peak-to-peak height of the display )
//calculation:
T = w*tc
f = 1/T
ptpv = h*Vc
Amp = ptpv/2
Vrms = Amp/(2^0.5)
printf("\n\n (a)Frequency, f = %.0f Hz",f)
printf("\n\n (b)the peak-to-peak voltage = %.0f V",ptpv)
printf("\n\n (c)Amplitude = %.1f V",Amp)
printf("\n\n (d)r.m.s voltage = %.2f V",Vrms)
