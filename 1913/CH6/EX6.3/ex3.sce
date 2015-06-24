clc
clear
//Input data
L=0.012;//Wall thickness of a mild steel tank in m
t1=100;//Temperature of water in tank in degree centigrade
t4=20;//Atmospheric temperature of air in degree centigrade
K=50;//Thermal conductivity of mild steel in W/m-K
hi=2850;//Convection heat transfer coefficient on water side in W/m^2-K
ho=10;//Convection heat transfer coefficient on air side in W/m^2-K
Q1=60;//Heat trasfer from the incandicent lamp in W
s=5.67*10^-8;//Stefan boltzmann constant in W/m^2/K^4
T1=2500;//Lamp surface temperature in K
T2=300;//Room temperature in K
A=1;//Assuming area in m^2

//Calculations
T=t1-t4;//Temperature difference in degree centigrade
Q=(T)/((1/hi)+(L/K)+(1/ho));//Rate of heat loss per m^2 area of surface of tank in W
t3=(Q/(ho*A))+(t4);//Temperature of the outside surface in degree centigrade
U=(Q)/(A*T);//Overall Heat transfer coefficient in W/m^2/K
a=(Q1)/(s*(T1^4-T2^4));//surface area of the coil in m^2
a1=a*10^6;//Surface area of the coil in mm^2

//Output
printf('(a) The rate of heat loss per sq m area of the tank Q = %3.2f W \n (b) Overall heat transfer coefficient U = %3.2f W/m^2/K \n (c) Temperature of the outside surface of tank t3 = %3.2f degree centigrade \n (d)The surface area of the coil is %3.3f mm^2',Q,U,t3,a1)
