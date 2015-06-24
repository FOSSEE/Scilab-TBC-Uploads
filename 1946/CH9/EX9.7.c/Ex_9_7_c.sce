// Example 9.7.b;//optical current
clc;
clear;
close;
Ip=10^-6;//optical current in ampere
C=3*10^8;//SPEED of light in meter per second
n=0.50;//quantum efficiency
h=900;//wavelength in nano meter
ht=6.62*10^-34;//plank constt.
R=((n*h)/1248);//responsivity
Po=(Ip/R);//Output power in  watt
n=(Po*h*10^-9)/(ht*C);//no. of received phontons
disp(n,"no. of received phontons is")
