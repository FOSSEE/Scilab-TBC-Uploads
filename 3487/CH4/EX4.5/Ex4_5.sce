//Chapter 4,Example 4.5 Page 146
clc
clear
V1 = 150*10^3 // V
PD = 1200 // potential divider ratio
I = 10^-6 // A
t = 8 // sec
V = V1/PD
R = V/I
C = t*10^6/R
printf (" V = %f V \n ",V)
printf (" R = %f M Ω \n ",R*10^-6)
printf (" C = %f μF \n ",C)

// Answers provided in the textbook are wrong
