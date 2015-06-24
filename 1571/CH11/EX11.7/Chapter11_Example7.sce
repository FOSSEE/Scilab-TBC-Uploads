clc
clear

//INPUT
w=23;//thermal capacity of calorimeter in cal
m=440;//mass of water in gm
l=14.6;//lenght of the rubber tube in cm
dt=0.019;//rate of change in temperature in deg.C/sec
t=100;//temperature of steam in deg.C
t1=22;//temperature of the water in deg.C
t2=t1;//temperature of calorimeter in deg.C
r1=1;//external radii in cm
r2=0.75;//internal radii in cm

//CALCULATIONS
k=(w+m)*dt*log(r1/r2)/(2*3.14*l*(t-((t1+t2)/2)));//thermal conductivity in cgs unit

//OUTPUT
mprintf('thermal cnductivity of rubber tube is %3.5f cgs unit',k)
