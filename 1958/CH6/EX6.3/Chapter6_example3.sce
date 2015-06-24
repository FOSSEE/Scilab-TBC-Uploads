clc
clear
//Input data
m=(28*1.66*10^-27)//Molecular mass of a gas in kg
d=(3.48*10^-10)//Diameter in m
k=(1.38*10^-23)//Boltzmans constant in J/K
P=1.01*10^5//Pressure at STP in N/m^2
T=273//Temperature at STP in K

//Calculations
D=((1/(P*3*d^2*sqrt(m)))*((2*k*T)/3.14)^(3/2))/10^-5//Diffusion coefficient of a gas at STP in m^2/s

//Output
printf('Diffusion coefficient of a gas at STP is %3.2f * 10^-5 m^2/s',D)
