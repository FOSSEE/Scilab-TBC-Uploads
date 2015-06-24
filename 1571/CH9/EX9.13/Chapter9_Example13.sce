clc
clear

//INPUT
t1=915;//temperature at the beggining in K
t2=2040;//temperature at the end in K
d=12.6;//adiabatic expansion ratio
y=1.39;//coefficent of expansion

//CALCULATIONS
x=t2/t1;//ratio temparatures
n=1-(1/d)^(y-1)*((x^y)-1)/(y*(x-1));//efficiency of the engine

//OUTPUT
mprintf('the efficiency of the engine is %3.3f',n)
