//Example  6.7// resistance 
clc;
clear;
close;
format('v',6)
n=1000;//turns in rpm
ra=0.3;//armature resistance in ohms
rf=40;//field resistance in ohms
it=5;//field current in amperes
if1=4;//field current in amperes
e1=220;//emf in volts
e2=200;//emf in volts
ia=35;//armature current in amperes
eb=(e1-(ia*ra));//emf in volts
x=((eb-e2)/(it*if1));//additional field current in amperes
ce=e1-e2;//change in emf in volts
ix=if1+x;//total current in amperes
rt=(e1/ix);//total resistance in ohms
adr=rt-rf;//additional resistance required in ohms
disp(adr,"additional resistance required is,(Ohm)=")
