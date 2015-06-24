//Chapter 4,Example 4.4 Page 145
clc
clear
Imin = 2*10^-6 // A
Imax = 35*10^-6 // A
V = 15*10^4 // V
w = 2*%pi*1500/60
Cm = sqrt(2)*Imin/(V*w) 
Ipeak = 2*250/15
printf (" Cm = %f pF \n ",Cm*10^13)
printf (" At 250 kV, the current indicated will be = %f μA \n ",Ipeak)

//Answers vary due to round off error
