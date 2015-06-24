clc
clear

//INPUT
p1=15;//intial pressure in lb/sq.inch
dv=15;//ratio of intial to final volume
t1=520;//temperature at intial in K
y=1.4;//coefficient of expansion

//CALCULATIONS
p2=p1*(dv)^(y);//final pressure in lb/sq.inch
t2=t1*(dv)^(y-1);//final temperatire in K

//OUTPUT
mprintf('the final pressure is %3.2f lb/sq.inch \n the final temperature is %3.2f K',p2,t2)
