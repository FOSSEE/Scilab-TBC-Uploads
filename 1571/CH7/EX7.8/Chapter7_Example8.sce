clc
clear

//INPUT
p1=1;//inital pressure in atm
p2=51;//final pressure in atm
t1=300;//inital temperature in K
y=1.4;//coefficient of expansion

//CALCULATIONS
t2=t1*(p2/p1)^((1-y)/y);//final temperature in K
dt=t1-t2;//drop in temperature in K

mprintf('the drop in temperature is %3.2f K',dt)
