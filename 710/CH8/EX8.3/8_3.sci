clc();
clear;

//To measure Zeeman shift in wave length

//Zeeman shift in frequency is delta V=eB/4*Pi*m.
//v=c/lambda  and dv=-cB(lambda)^2=mod[(c*d*lambda)/lambda^2]
//Therefore delta lambda=(lambda^2*delta v)/c=eB(lambda^2)/4*pi*m*c
e=1.6*10^-19;
B=0.35;                     //magnetic field
lambda=500*10^-9;          //wavelength in m
m=9.1*(10^-31);
c=3*(10^8)*10^-9;         //speed of light 
deltalambda=(e*B*(lambda)^2)/(4*(%pi)*m*c)
printf("Zeeman shift in wave length is %f nm",deltalambda);