//scilab 5.4.1
//Windows 7 operating system
//chapter 21 Communication Systems
clc
clear
//fc=9*sqrt(Np)
fc=3*10^6//fc=critical frequency in Hz
Np=(fc^2)/81//Np=electron concentration at the reflecting point
//h=height of the reflecting point from the bottom of the layer
//Np=(5*10^10)+(10^9*h)....(given)
h=(Np-(5*10^10))/10^9
H=100//H=height above the surface of the earth in km
disp("km",h+H,"The required height above the ground is =")
