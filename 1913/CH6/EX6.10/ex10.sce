clc
clear
//Input data
T1=7;//Inside temperature of refrigerator in degree centigrade 
T0=28;//Temperature in the kitchen in degree centigrade
K1=40;//Thermal conductivity of mild steel in W/mC
x1=0.03;//Thickness of mild sheets in m
K3=40;//Thermal conductivity of the mild steel in W/mC
x3=0.03;//Thickness of another side mild sheet in m
x2=0.05;//Thickness of glass wool insulated in m
hi=10;//Heat transfer coefficient in the inner surface of refrigerator in W/m^2 C
ho=12.5;//Heat transfer coefficient in the outer surface of refrigerator in W/m^2 C
K2=0.04;//Thermal conductivity of glass in W/mC

//Calculations
Q=(T1-T0)/((1/hi)+(x1/K1)+(x2/K2)+(x3/K3)+(1/ho));//Heat transfer per unit area in W/m^2

//Output
printf('The rate of heat removed from the refrigirator Q = %3.3f W/m^2 ',Q)
