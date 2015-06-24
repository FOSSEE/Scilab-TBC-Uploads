clc
clear
//INPUT DATA
er=50*10^-8//electrical resistivity in ohm metre
t=300//temperature in k
r=13*10^-3//radius of brass in m
th=35*10^-3//thickness of brass in m
L=2.44*10^-8//Lorentz number in W ohm K^-2

//CALCULATION
K=(L*t)/er//thermal conductivity of brass in W m^-1 K^-1
A=3.14*r*r //area of brass disk in m^2
Rt=th/(K*A)//thermal resistance of brass in K W^-1

//OUTPUT 
printf('The thermal conductivity of brass is %3.2f W m^-1 K^-1 \n The thermal resistance of brass is %3.3f K W^-1',K,Rt)
