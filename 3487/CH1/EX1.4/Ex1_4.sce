//Chapter 1,Example 1.4 Page 53
// Determine (pd)min Vbmin
clc
clear
A = 12
B = 365
e = 2.718
ghama = 0.02
K = 51
pd = (e/A)*log(1+(1/ghama))
Vbmin = (B/A)*e*log(K)
printf (" (pd)min = %f Vbmin = %f Volts",pd,Vbmin)

//Answers may vary due to round of error
