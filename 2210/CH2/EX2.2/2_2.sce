//Chapter 2, Problem 2
clc
D=300e-3                    //distance in meter between the two wire 
d=4e-3                      //diameter in meter of a conductor 
e=1                         //relative dielectric 

//calculating the characteristic impedance of the type of parallel transmission line
z0=(276/sqrt(e))*log10(2*D/d)
printf("Characteristic impedance, Z0 = %d ohm",z0)
