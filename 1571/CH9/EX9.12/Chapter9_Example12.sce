clc
clear

//INPUT
t1=340;//temperature of the atmosphere in K
t2=612;//temperature of the compression stroke in K
y=1.39;//adiabatic expansion 
t3=2040;//temperature after constant volume ignition in K

//CALCULATIONS
d=(t2/t1)^(1/(y-1));//density in gm/cc
n=1-(1/d)^(y-1);//efficiency of the engine
p=((d)^(y))*(t3/t2);//maximum temperature of the temperature in atm

//OUTPUT
mprintf('the maximum pressure of the engine is %3.2f atm',p)
