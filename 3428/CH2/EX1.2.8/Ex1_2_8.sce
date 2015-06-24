//Section-1,Example-2,Page no.-AC.173
//To calculate the gross and net calorific value of the coal in (cal/gm).
clc;
W1=650
W2=2500
T=2.5                 //T=T_2-T_1(Rise in temperature)
CC=0.03
x=0.85
H=8
A=50
FC=10
GCV=(((W1+W2)*(T+CC))-(A+FC))/x
disp(GCV,'gross calorific value(cal/gm)')
NCV=(GCV-(0.09*H*580))
disp(NCV,'net calorific value(cal/gm)')
