//Chapter 4,Example 4.3 Page 145
clc
clear
d = 1 //mm
V = 10^3 // V
F = 5*10^-3 // pull between the plates in N
E = 1/(36) // epselon
A = 10^2/4 // Area of the plate 
d1 = sqrt((1/(2*F))*E*10^-9*V^2*A*10^-4) // calculation done in the text is wrong
d21 = 1/(d1*10^4)
d22 = 1/(d1*10^4+d)
C = (V*E*10^-9*A*10^-4)*(d21-d22)
printf (" d = %f mm \n ",d1*10^4)
printf (" charge in capacitance = %f pF \n ",C*10^12)

//Answers may vary due to round off error
