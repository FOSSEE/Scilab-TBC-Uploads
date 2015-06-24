//Chapter 14,Example 1, page 453
//Determine the time to crest 
clear
clc
I = 400 // mH of inductance
L = 500*10^-3 // mH
C = 1.5*10^-6 // micro F

f = 1/(2*%pi*sqrt(L*C))  
t = 10**6/(4*f) // calulation done in the text is wrong
printf("\n f1 = %f Hz",f)
printf("\n Time to crest = %f micro seconds",t)

// Answer may vary due to round off error.
