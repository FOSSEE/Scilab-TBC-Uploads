clc
clear
//Input data
m=(32*1.66*10^-27)//Molecular mass of a gas in kg
d=(3.65*10^-10)//Diameter in m
k=(1.38*10^-23)//Boltzmans constant in J/K
P=1.01*10^5//Pressure at STP in N/m^2
T=273//Temperature at STP in K

//Calculations
n=((1/(3.14*d^2))*sqrt((8*k*T*m)/(9*3.14)))/10^-5//Viscosity of gas at STP in N.s/m^2

//Output
printf('Viscosity of a gas at STP is %3.5f *10^-5 N.s/m^2',n)
