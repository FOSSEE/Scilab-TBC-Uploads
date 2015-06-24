// Example 1.10 page no-25
clear
clc

Energy=50 //eV
V0=Energy   //Volts
e=1.6*10^-19 //c
m=9.1*10^-31 //kg
v0=sqrt(2*e*V0/m)
v0=ceil(v0/10^5)
v0=(v0/10)*10^6
printf("\nVelocity, v0=%.0f",v0)

t=(35.5*10^-12)/(2*10^-3)
//Components of velocities are
v1=v0*cos(10*%pi/180)
v2=v0*cos(20*%pi/180)
x=v1-v2
d=x*t
printf("\nDistance, d =%.4f cm",d*100)
