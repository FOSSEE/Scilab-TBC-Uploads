//Chapter 16,Example 5,page 559
//Determine the charging current and potential difference
clear
clc
ps = 0.5*10**-6 // C/m^2
u = 10 // m/s
w = 0.1 // m
I = ps*u*w 
Rl = 10^14 // ohm
V = I*Rl*10^-6
printf("\n Charging current= %f micro A", I*10^6)
printf("\n Potential difference = %f MV", V)

// Answers may vary due to round off error
