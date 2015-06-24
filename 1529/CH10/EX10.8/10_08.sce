//Chapter 10, Problem 8, figure 10.18
clc;
tc = 50e-3;                 // in s/cm
Vc = 0.2;                   // in V/cm
w = 3.5;                    // in cm ( width of one complete cycle )
h = 3.4;                    // in cm ( peak-to-peak height of the display )
//calculation:
T = w*tc
f = 1/T
ptpv = h*Vc
printf("\n\n (a)The periodic time, T = %.2f ms",T*10^3)
printf("\n\n (b)Frequency, f = %.2f Hz",f)
printf("\n\n (c)The peak-to-peak voltage = %.2f V",ptpv)
