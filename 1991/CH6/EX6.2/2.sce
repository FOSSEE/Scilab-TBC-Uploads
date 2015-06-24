clc
clear
//input
T=100 //rise in temperature
i=2.7 //current
t=950 //time taken
mc=0.15//mass of calorimeter 
cy=3*10^3//specific heat capacity of y
cc=2*10^3//specific heat capacity of calorimeter
my=160*10^-3//mass of liquid
//calculation
v=((my*cy)+(mc*cc))*T/(i*t)//law of conservation of heat
//output
printf("the potential difference is %3.0f V",v)
