// Problem no 14.10,Page No.337

clc;clear;
close;
H=6 //m //height of dam
a=1 //m //top width
b=3 //m //Bottom width
rho_mason=22 //KN/m**3 //weight of mason
rho_earth=16 //KN/m**3 //density of water
phi=30 //Degree //angle of repose
mu=0.5 //Coeffecient of friction

//Calculations

//Let Length of dam ,L=1 m
L=1 //m

//weight of dam
W=(a+b)*2**-1*L*H*rho_mason

//Lateral thrust
P=rho_earth*H**2*L*2**-1*((1-sin(30*%pi*180**-1))*(1+sin(phi*%pi*180**-1))**-1)

//Distance of Line of action from vertical base
x_bar=(b**2+b*a+a**2)*(3*(b+a))**-1

//distance of pt where resultant cuts the base
x=P*W**-1*H*3**-1

//Eccentricity
e=x_bar+x-b*2**-1
e_max=b*6**-1

//stress at toe
sigma2=W*10**3*b**-1*(1+6*e*b**-1)*10**-3

//Safe agaainst bearing

//Frictional Resistance 
F=mu*W

if F>P then
    //it is safe against sliding

//Result
printf("Safe against bearing as well as sliding")

end
