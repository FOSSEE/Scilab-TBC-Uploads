//Chapter 3, Example 3.2, Page 79
clc
clear
// Estimate the mass of Ga
//Based on equation 3.16
av = 15.835 // MeV
as = 18.33 // MeV
ac = 0.714 // MeV
aa = 23.30 // MeV
ap = 11.2 // MeV
A = 70
c2 = (1/931.5)
mn = 1.0072765
mp = 1.0086649
me = 0.00054858
a = av*A
b = as*A**(2/3)
c = ac*(31**2/A**(1/3))
d = aa*((A-62)**2/A)
c = ap/sqrt(A)
BE = (a-b-c-d)*c2 // BE/C^2
M = 31*mn+39*mp-BE+31*me
printf("\n Nuclear binding energy = %f u",BE); // answer provided in the textbook is wrong
printf("\n Atomic mass = %f u",M);

//Answer may vary due to round off error
