
clc
//initialisation of variables
d=5//cm
d2=0.01//cm
l=10//cm
w=0.88//g/cm^3
d1=0.1//cm
T=20*60//sec
Q=50//cm^3
H1=5//cm
w1=0.88*981//dynes
n1= 0.007 //poise
//CALCULATIONS
A=%pi*d*d/4
a=%pi*d1*d1/4
H2=H1-(Q/A)
n=T*a*w1*d2/(32*A*l**log(H1/H2))-n1
//RESULTS
printf ('viscosity of liquid= %.4f poises',n)
