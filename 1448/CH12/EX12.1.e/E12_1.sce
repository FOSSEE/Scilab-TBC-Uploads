clc
//Initialization of variables
P=100 //W
t=10 //s
l=560 //nm
//calculations
TE=P*t
E1=6.626*10^-34 *2.998*10^8 /(l*10^-9)
N=TE/E1
//results
printf("No. of photons required = %.2e ",N)
