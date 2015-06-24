//Chapter 10, Problem 7, figure 10.17
clc;
tc = 100e-6;             // in s/cm
Vc = 20;                 // in V/cm
w = 5.2;                  // in cm ( width of one complete cycle )
h = 3.6;                  // in cm ( peak-to-peak height of the display )

//calculation:
T = w*tc
f = 1/T
ptpv = h*Vc

printf("\n (a)The periodic time, T = %.2f ms\n", T*10^3)
printf("\n (b)Frequency, f = %.2f kHz\n",f/1000)
printf("\n (c)The peak-to-peak voltage = %.0f V\n",ptpv)
