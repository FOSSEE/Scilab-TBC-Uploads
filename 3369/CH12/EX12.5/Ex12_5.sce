//Chapter 12,Example 5, page 408
//Calculate capasitance and kVAr 
clear
clc
//(a) Using the notations used in FiVgs. 12.15 and 12.16
C2 = 0.75/3 // microF/km
C3 = (0.6*3-2*C2)/2 // microF/km
C4 = (C2+C3)/2 // microF/km
printf("\n C2 = %f mircoF/Km ",C2)
printf("\n C3 = %f mircoF/Km ",C3)
printf("\n C4 = %f mircoF/Km ",C4)
//(b)Capacitance of 10 km between 2 cores
V = 33*10**3
w = 2*%pi*50
C = 2*V^2*w*C4*10*10**-9
printf("\n Carging = %f kVAr ",C)

// Answers may vary due to round of errors.
