// Exa 9.11
clc;
clear;
close;
// given :
n=0.92 // refrective index
MUF=10 // maximum usable frequency in MHz
MUF=10*10^6 // maximum usable frequency in Hz
f=10*10^6 // in Hz ordinary frequency and maximum usable frequency are same
h=400 // height of ray reflection point on the ionospheric layer in Km
h=400*10^3 // height of ray reflection point on the ionospheric layer in m
// formula :n=sqrt(1-(81*Nmax/f^2))
Nmax=(1-n^2)*f^2/81 // electron density in electrons/m^3
fc=9*sqrt(Nmax) // critical frequency in Hz
// MUF=fc*sec(thetai)
//sec(thetai)=MUF/fc
// also, sec(thetai)=sqrt(h^2+(d^2/4))/h so on comparing,
d=sqrt(((MUF*h/fc)^2-h^2)*4) // range in km
disp(d/1000,"Range in Km")


// note :answer in the book is 1876.59 where as in scilab is 1877.94 minute difference only 
