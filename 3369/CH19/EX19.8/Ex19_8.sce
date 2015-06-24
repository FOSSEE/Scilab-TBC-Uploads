//Chapter 19,Example 8,page 676
//Determine the velocity of the ejected ions and propolsion force
clear
clc
mi = 133*1.67*10^-27 // kg
qi = 1.6*10^-19 // C
Va = 3500 // V
I = 0.2 // A
vi = sqrt(2*qi*Va/mi)
F = vi*mi*I/qi
printf("\n Ion velocity = %e m/s",vi)
printf("\n Populsion force = %e N",F)

// Answers may vary due to round off errors
