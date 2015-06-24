//Chapter 12,Example 10, page 412
//Determine the maximum stress 
clear
clc
a = 1 //cm
r1 = 2 // cm
b = 2.65 // cm
er1 = 4.5
er2 = 3.6
V = 53.8 // kV
ba = 5.3/2 // b/a
alpha = 1.325
E1max = V/(log(r1)+(er1/er2)*log(alpha))
E2max = V/((r1*(er2/er1)*log(r1))+log(alpha))
printf("\n E1max = %f kV/cm",E1max)
printf("\n E2max = %f kV/cm",E2max) // answer vary from the text

// Answer vary from the text due to round off 
