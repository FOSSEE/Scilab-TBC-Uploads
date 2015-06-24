clc
//Initialization of variables
d=8.642 //g/cc
M=112.41 //g/mol
ratio=0.01/100
nb=2400
//calculations
n=d*6.02*10^23 /M
sigma=nb*10^-24
x=-2.303*log10(ratio) /(sigma*n)
//results
printf("Thickness = %.3f cm",x)
