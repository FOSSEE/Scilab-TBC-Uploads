//chapter-4 page 155 example 4.22
//==============================================================================
clc;
clear;

//For an air filled square waveguide
a=0.01;//Length of an air filled square Waveguide in m
b=0.01;//breadth of an air filled square Waveguide in m
c=3*10^8;//Velocity of Light in m/sec
f=30*10^9;//Frequency in Hz in TE11 mode
Pmax=746;//Max power =1 horsepower  in W
n=120*(%pi);//Impedance of freespace in ohms

//CALCULATION
w0=(c/f);//Free space wavelength in m
wc=2*a;//Cutoff wavelength in m
ZTE=(n/sqrt(1-(w0/wc)^2));//Impedance in ohms
Emax=(sqrt((Pmax*4*ZTE)/(a*b)))/1000;//The Peak value of Electric field occuring in the guide in kV/m
//From P=(1/2)*Integration(Re(E*H))da
//and Pmax=(1/(4*ZTE))*Emax^2*a*b

//OUTPUT
mprintf('\nThe Peak value of Electric field occuring in the guide is Emax=%3.2f kV/m',Emax);

//=========================END OF PROGRAM===============================

