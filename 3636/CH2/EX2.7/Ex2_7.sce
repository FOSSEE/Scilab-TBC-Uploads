clear;
clc;
// r = p*a + q*b + s*c
x=3 //intercept on x axis
y=4 //intercept on y axis
z=5 //intercept on z zxis

//Calculation
LCM=lcm({x,y,z}) //LCM for computing miller indices
rx=1/x*LCM //reciprocal
ry=1/y*LCM
rz=1/z*LCM

mprintf("Miller indices of plane are (%i,%i,%i)",rx,ry,rz)
