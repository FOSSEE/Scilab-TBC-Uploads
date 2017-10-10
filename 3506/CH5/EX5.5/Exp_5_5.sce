//Optical Fiber communication by A selvarajan
//example 5.5
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
h=6.6*10^-34//planck's constant
c=3*10^8//velocity of light in m/s
q=1.6*10^-19//charge of an elctron in columb
lambda=0.85*10^-6//wavelength in m
I=0.1//incident light intensity in mW/mm2
Iph1=10*1e-6//photocurrent in pin in A
Iph2=500*1e-6//photocurrent in APD in A
A=0.2//detector area in mm2
P=I*A//Power seen by detector in mW
photons_generated=P*1e-3/(h*c/lambda)//photons Generated
Rate=Iph1/q//rate of carrier generation for pin
eta=Rate/photons_generated;//Quantum efficiency for pin
M=Iph2/Iph1//Multiplication factor
mprintf('Quantum efficiency is=%f',eta);//The answers vary due to round off error
mprintf('\n Avalanche multiple factor=%f',M);

