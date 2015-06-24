clc
clear
//Input data
v=460//Average speed of molecules in m/s
l=(720*10^-10)//Mean free path in m
Cv=21.06//Specific heat at constant volume in J/K.mol
k=(1.38*10^-23)//Boltzmans constant in J/K
P=1.01*10^5//Pressure at STP in N/m^2
T=273//Temperature at STP in K
N=6.022*10^23//Avagadro constant

//Calculations
K=((1/3)*(Cv/N)*(P/(k*T))*v*l)/10^-2//Thermal conductivity of the gas at STP in W/m.K *10^-2

//Output
printf('Thermal conductivity of the gas at STP is %3.5f *10^-2 W/m.K',K)
