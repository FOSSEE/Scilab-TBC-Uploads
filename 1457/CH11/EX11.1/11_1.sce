clc
//Initialization of variables
y=3.4 //ft
n=0.016
//calculations
A=(10+2*y)*y
P=10+ 2*sqrt(5) *y
Rh=A/P
f=116*n^2 /Rh^(1/3)
e= 14.8*Rh/ 10^(1/2/sqrt(f))
//results
printf("absolute roughness of pipe = %.4f ft",e)
