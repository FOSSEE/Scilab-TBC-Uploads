//Example 5.3.2
//Claculate the bandwidth and frequency range
//Variables
clc
clear
Rs = 16
fc = 14.125
alpha = 0.25

//result
Bocc = Rs*(1 + alpha)
fl = fc - (Rs/2)*(1+alpha)
fh = fc + (Rs/2)*(1+alpha)

printf("The bandwidth occupied by RF signal is %f Mhz\n",Bocc)
printf("The frequecny range is from %f Ghz to %f Ghz",fl,fh)
