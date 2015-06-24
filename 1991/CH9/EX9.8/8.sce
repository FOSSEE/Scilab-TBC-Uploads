clc
clear
//input
c=3*10^8//speed of light
m=9.1*10^-31//mass of electron
tw=5.12*10^-7//threshhold wavelength
w1=4.52*10^-8 //radiation wavelength
h=6.6*10^-34//stephans constant
//calculation
f0=c/tw//threshhold frequency
w=h*f0//work function
a=h*c/w1//einsteins photo electric equation
v=sqrt((2*(a-w))/m)//photoelectric energy 
emax=0.5*m*v*v
//output
printf("threshhold frequency is %3.3e Hz",f0)
printf("\n the work function is %3.3e J",w)
printf("\n the maximum photoelectric speed is %3.3e ms^-1",v)
printf("\n the maximum photoelectric energy is %3.3e J",emax)
