//Chapter 3, Exmaple 18, page 110
//Determine the diameter
clc
clear
//Based on the equation 3.40
k = 1.38*10**-23
T = 293
z2z1 = 0.05
e = 1.6*10**-19
E = 250
r1 = 0.09*10**-6
r1r2 = (6*k*T*z2z1)/(e*E)
r2 = sqrt(r1+r1r2)
printf("\n r1^2-r2^2 = %e ",r1r2)
printf("\n r2 = %e m ",r2)

//answers may vary due to round off error
