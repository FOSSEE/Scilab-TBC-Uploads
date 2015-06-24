clc 
// Given that
V = 980 // volume in meter^3
a = 1.58 // area of window in m^2
I_ = 1e-12 // standard intensity level of sound wave in W/m^2
l = 60 // intensity level in dB
// Sample Problem 9 on page no. 8.21
printf("\n # PROBLEM 9 # \n")
I = I_ * 10^(l / 10)// calculation for intensity
AP = I * a// calculation for acoustic power
printf("Standard formula used \n Intensity level=10log(I/I_),\nAP=I*A\n")
printf("\n Acoustic power = %e watt.",AP)
