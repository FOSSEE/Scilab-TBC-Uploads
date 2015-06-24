//Chapter 4,Example 4.1 Page 144
clc
clear
//Determine the voltge when S=2 cm 
S = 0.2 // cm
Vb = 24.22*S+6.08*sqrt(S)
printf (" Vb when S = 2 cm is %f kV \n ",Vb)
//Determine the voltge when S=1.5 cm 
S = 1.5 // cm
Vb = 24.22*S+6.08*sqrt(S)
printf (" Vb when S = 1.5 is %f kV \n ",Vb)
b = 75
t = 35
D = (3.92*b)/(273+t)
printf (" Air density correction factor= %f \n ",D)

//Answer may vary due to round off error
