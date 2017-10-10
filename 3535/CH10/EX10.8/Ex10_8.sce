//Chapter 10, Example 10.8, Page 293
clc
clear
//Resulting reactor period
bt = 0.0065
dt = 0.00065
T = (bt*12.8)/dt
Pt = 10000
P0 = 10
t = T*log(Pt/P0)
printf(" Resulting reactor period = %f sec \n",T)
printf(" t = %f sec\n",t)
//Answer may vary due to round off error
