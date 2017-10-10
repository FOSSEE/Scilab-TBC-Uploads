// Problem no 14.13,Page No.341

clc;clear;
close;
H=6 //m //height of dam
a=1 //m //top width
b=3 //m //Bottom width
rho_s=18 //KN/m**3 //density of soil
rho_mason=24 //KN/m**3 //density of mason
alpha=20
phi=30

//Calculations

//Let Length of dam ,L=1 m
L=1 //m

a2=cos(alpha*%pi*180**-1)
b2=(cos(alpha*%pi*180**-1)-((cos(alpha*%pi*180**-1)**2-cos(phi*%pi*180**-1)**2))**0.5)
c2=(cos(alpha*%pi*180**-1)+((cos(alpha*%pi*180**-1)**2-cos(phi*%pi*180**-1)**2)**0.5))

X=a2*b2*c2**-1

//Total Pressue on the wall
P=rho_s*H**2*2**-1*X

//The Horizontal component of pressure
P_H=P*cos(20*%pi*180**-1)

//The Vertical component of pressure
P_V=P*sin(20*%pi*180**-1)

//weight of wall
W=(a+b)*H*rho_mason*2**-1

//TotaL Weight 
W1=W+P_V

//Taking moment of vertical Loads about B,M_B=0
x_bar=(rho_mason*a*H*0.5+rho_mason*H*2)*W1**-1

x=P_H*W1**-1*H*3**-1

//eccentricity
e=x_bar+x-b*2**-1

//Stress at the toe at C
sigma_max=W1*b**-1*(1+6*e*b**-1)

//Stress at the heel at B
sigma_min=W1*b**-1*(1-6*e*b**-1)

//Result
printf("Pressure at the base of the wall:Pressure at the heel %.2f",sigma_min);printf(" KN/m**2")
printf("\n                                 :Pressure at the toe %.2f",sigma_max);printf(" KN/m**2")
