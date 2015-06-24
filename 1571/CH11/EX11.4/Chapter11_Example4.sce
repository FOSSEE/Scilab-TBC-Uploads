clc
clear

//INPUT
l=30;//length of the tube in cm
t=100;//temperature at outside in deg.C
t1=40;//tempertaure of water when leaving tube in deg.C
t2=20;//temperature of water when entering tube in deg.C
m=165/60;//mass flow rete of water in cc/sec
r1=6;//internal radii in mm
r2=8;//external radii in mm

//CALCULATIONS
k=m*(t1-t2)*log(r2/r1)/(2*3.14*l*(t-((t1+t2)/2)));//thermal conductivity in cgs unit

//OUTPUT
mprintf('thermal conductivity of the tube is %3.4f cgs unit',k)
