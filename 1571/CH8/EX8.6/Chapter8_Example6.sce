clc
clear

//INPUT
t1=288;//inital temperature in K
dv=1/2;//ratio of inital to final volume
y=1.4;//coefficient of expansion

//CALCULATIONS
t2=t1*(dv)^(y-1);//final temperature in K

//OUTPUT
mprintf('the final temperature is %3.1f K',t2)
