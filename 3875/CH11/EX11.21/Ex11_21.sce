clc;
clear;
lambda=0.171 //wavelength of X-ray in nm
tetha_1=30 //Braggs angle in degree
tetha_2_degrees=35 //part of Braggs angle in degrees
tetha_2_minutes=17 //part of Braggs angle in minutes
h=1 //x intercept of the parallel plane 
k=1 //y intercept of the parallel plane 
l=0 //z intercept of the parallel plane 

//calculation
//case(A)
d_110=lambda/(2*sind(tetha_1))
a=d_110*sqrt(h^2+k^2+l^2)
mprintf("The lattice parameter is = %1.3f nm\n",a)

//case(B)
h=2 //x intercept of the parallel plane 
k=0 //y intercept of the parallel plane 
l=0 //z intercept of the parallel plane 
tetha_2_decdeg=tetha_2_degrees+(tetha_2_minutes/60)
d_110=lambda/(2*sind(tetha_2_decdeg))
a=d_110*sqrt(h^2+k^2+l^2)
mprintf("The lattice parameter is = %1.4f nm\n",a)
mprintf("The lattice parameters are not equal,hence metal is not bcc\n")
mprintf("We assume that the metal is fcc,lattice parameter is consistent at value=0.296 nm\n") //by multiplying d_110 by sqrt(3) and d_200 by sqrt(4)

//for atomice diameter we have
a=0.296 //lattice parameter in nm
D=a/sqrt(2)
mprintf("The atomic diameter is = %1.4f nm",D) 
