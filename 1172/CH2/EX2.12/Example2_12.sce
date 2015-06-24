clc
// Given That
phi = 0.02 // rate of change of magnetic field in T/s
r =  2 // radius of frame in cm
R = 2 // resistance of frame in m ohm
//Sample Problem 12 Page No. 85
printf("\n # Problem 12 # \n ")
a = %pi * (r*1e-2)^2
e =  a * phi // magnitude of emf  induced in coil
i = (e) / (R*1e-3) 
 printf("Current induced due to changing magnetic field is %f mA \n", i*1000) 

