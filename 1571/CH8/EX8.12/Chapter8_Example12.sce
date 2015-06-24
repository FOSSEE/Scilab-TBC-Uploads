clc
clear

//INPUT
p=10^6;//pressure of air in dynes
d=0.0001293;//density of air in gm/cc
t1=273;//inital temperature in K
dv=2;//ratio of inital volume to final volume
y=1.4;//coefficient of expansion

//CALCULATIONS
r=p/(d*t1);//universal gas constant in dynes.cc/gm.K
t2=t1*(dv)^(y-1);//final temperature in K
w=r*(t2-t1)/(y-1);//work done in adiabatic compression in ergs

//OUTPUT
mprintf('work done in adiabatic compression is %3.2f ergs',w)
