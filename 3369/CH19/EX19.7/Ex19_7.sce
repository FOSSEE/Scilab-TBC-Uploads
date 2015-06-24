//Chapter 19,Example 7,page 676
//Determine the thickness of dust layer
clear
clc
Edb = 3*10^6
E0 = 8.84*10^-12
p0 = 15*10^-3
d = Edb*E0/p0
printf("\n Thickness of the dust layer = %e m",d)

// Answers may vary due to round off errors
