clc
clear

//INPUT
dv=10^(-3);//ratio of initial and final volume
t1=10^5;//initial temperature in K
y=1.66;//coefficient of expansion

//CALCULATIONS
t2=t1*(dv)^(y-1);//final temperature in K

//OUTPUT
mprintf('final temperature of the gas is %3.2f K',t2)
