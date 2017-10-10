// Problem no 14.11,Page No.338

clc;clear;
close;
H=8 //m //height of dam
a=1 //m //top width
b=4.5 //m //Bottom width
rho_mason=24 //KN/m**3 //weight of mason
rho_earth=20 //KN/m**3 //density of water
phi=30 //Degree //angle of repose
mu=0.5 //Coeffecient of friction
BC=120 //KN/m**2


//Calculations

//Let Length of dam ,L=1 m
L=1 //m

//weight of dam
W=(a+b)*2**-1*L*H*rho_mason

//Rankine's coeff earth pressure
K=((1-sin(30*%pi*180**-1))*(1+sin(phi*%pi*180**-1))**-1)

//Lateral thrust
P=rho_earth*H**2*L*2**-1*K

//Distance of Line of action from vertical base
x_bar=(b**2+b*a+a**2)*(3*(b+a))**-1

//distance of pt where resultant cuts the base
x=P*W**-1*H*3**-1

//Eccentricity
e=x_bar+x-b*2**-1

//Pressure at heel B
sigma1=W*b**-1*(1-6*e*b**-1)

//Pressure at heel C
sigma2=W*b**-1*(1+6*e*b**-1)

//sigma2>120 //KN/m**2,so it is unsafe against bearing capacity of the soil

//result
printf("Unsafe against the bearing capacity of soil")

//Plotting the Shear Force Diagram

X1=[0,L,L]
Y1=[sigma2,sigma1,0]
Z1=[0,0,0]
plot(X1,Y1,X1,Z1)
xlabel("Length x in m")
ylabel("Shear Force in kN")
title("the Shear Force Diagram")
