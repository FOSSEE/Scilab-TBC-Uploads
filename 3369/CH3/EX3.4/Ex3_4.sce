//Chapter 3, Exmaple 4, page 105
//Temperature & Average K.E of He atom
clc
clear
m0 = 1
v2 = 1.6*10**-19 // V^2
KE = m0*v2
//Using equation 3.3
T = 2*KE/(3*1.38*10**-23) 
printf("\nK.E = %e J",KE)
printf("\nTemperature = %e K",T)
  
