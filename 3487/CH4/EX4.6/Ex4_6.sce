//Chapter 4,Example 4.6 Page 146
clc
clear
i = 8*10^3 // i(t)
V0 = 8 // V0(t)
I = 8*10^3 // A
rcI = 10^10 // rate of change of current in A/sec
R = 8*10^3 // ohm
RCbyM = i/V0 // R*C/M
t = I/rcI // 1/4 of cycle
T = t*4 
f = 1/T
CR = 5/f
M = CR/RCbyM
C = CR/R
printf (" Time for 1/4 cycle = %e sec \n ",t)
printf (" Full time = %e sec \n ",T)
printf (" f = %e Hz \n ",f)
printf (" M = %e H \n ",M)
printf (" C = %e F \n ",C)
printf (" R = %e Ω \n ",R)

// Answers may vary due to round off error
