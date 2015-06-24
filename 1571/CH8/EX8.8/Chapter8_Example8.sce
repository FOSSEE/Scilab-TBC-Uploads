clc
clear

//INPUT
y=1.5;//coefficient of expansion
dp=1/8;//ratio of inital pressure to final pressure
t1=300;//inital tempreature in K

//CALCULATIONS
t2=t1*(dp)^((1-y)/y);//change in temperature in K
t3=t2-t1;//rise in temperature in K

//OUTPUT
mprintf('the rise in temperature is %3.2f K',t3)
