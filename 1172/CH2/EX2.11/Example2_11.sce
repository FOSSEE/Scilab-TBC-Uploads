clc
// Given That
B = 0.2 //  magnetic field in T
del_r = 1 // rate of change of decrement in loop radius in cm/s
r =  20 // radius of frame in cm
R = 10 // resistance of frame in m ohm
//Sample Problem 11 Page No. 84
printf("\n # Problem 11 # \n ")
e =  2* %pi * B *r *1e-2* del_r*1e-2 // magnitude of emf induced in coil
i = (e) / (R*1e-3) //calculation of Current induced due to changing magnetic field
 printf("Current induced due to changing magnetic field is %f A \n", i)



