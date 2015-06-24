clc 
// Given that
p = 4e-3 // energy of laser pulse in meter
r = 1.5e-5 // radius of spot in meter
t = 1e-9 // pulse length in time in sec
// Sample Problem 4 on page no. 4.26
printf("\n # PROBLEM 4 # \n")
p_ = p / t// calculation for  power in watt
I = p_ / (%pi * r^2)// calculation for power per unit area delivered by the laser
printf("Standard formula used \n I=P/a\n")
printf("\nPower per unit area delivered by the laser = %e watt/square meter",I)
