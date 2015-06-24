//chapter-4 page 153 example 4.19
//==============================================================================
clc;
clear;

a=0.015;//Length of hollow Rectangular Waveguide in m
b=1;//breadth of hollow Rectangular Waveguide in cm
f=6*10^9;//Frequency in Hz in TE10 mode
c=3*10^8;//Velocity of Light in m/sec
m=1;//Value of m in TE10 mode
n=0;//Value of n in TE10 mode
u=4*(%pi)*10^(-7);//Permeability in free space in Henry
e=8.854*10^(-12);//Permittivity in free space in F/m

//CALCULATION
wc=2*a;//Cutoff wavelength for TE10 mode in m
fc=c/wc;//Cutoff frequency in Hz
w=2*(%pi)*f;//Angular frequency in rad/sec

//So 6GHz signal will not pass through waveguide but will get attenuated
A=(sqrt((m*(%pi)/a)^2+(n*(%pi)/b)^2-(w^2*u*e)));//Attenuation in NP/m
AdB=A*(20/log(10));//Attenuation in dB/m

//OUTPUT
mprintf('\Amount of Attenuation is A=%3.1f NP/m \nAttenuation is AdB=%4.2f dB/m',A,AdB);

//=========================END OF PROGRAM===============================
