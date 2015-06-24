clc
clear

//INPUT
dv=10;//ratio of original volume to final volume
t1=293;//inital temperature in K
y=1.41;//coefficent of expansion

//CALCULATIONS
t2=t1*(dv)^(y-1);//final temperature in K

//OUTPUT
mprintf('the final temperature is %3.2f K',t2)
