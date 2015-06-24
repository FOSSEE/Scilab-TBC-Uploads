clc
clear

//INPUT
p1=2;//pressure initial in atm
p2=1;//pressure final in atm
t1=288;//inital temperature in K
y=1.4;//coefficent of expansion

//CALCULATIONS
t2=t1*(p2/p1)^((y-1)/y);//final temperature in K
dt=t1-t2;//drop in temperature in K

//OUTPUT
mprintf('drop in temperature is %3.2f K',dt)
