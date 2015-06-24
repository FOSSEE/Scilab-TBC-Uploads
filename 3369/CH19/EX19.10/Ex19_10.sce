//Chapter 19,Example 10,page 679
//Determine the minimum voltage required for gnerating drops witha charge of 50 pC per drop
clear
clc
q = 50*10^-12
a = 25*10^-6
b = 750*10^-6
E0 = 8.84*10^-12
r = 50*10^-6 
V = (3*q*b^2*log(b/a))/(7*%pi*E0*r^3)
printf("\n The minimum voltage required for gnerating drops witha charge of 50 pC per drop = %f kV",V*10^-6)

// Answers may vary due to round off error
