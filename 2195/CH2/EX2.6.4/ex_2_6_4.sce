//Example 2.6.4:limiting error
clc;
clear;
close;
format('v',6)
r1=120;//in ohms
er1=0.5;//limiting error in resistance 1 in ohms ±
r2=2;//in amperes
er2=0.02;//limiting error in amperes ±
e1=er2/r2;//limiting error in current
e2=er1/r1;//limiting eror in resistance
et=(2*e1+e2);//totak error
etp=et*100;//percentage limtimg error
disp(etp,"percentage limiting error in the value of power dissipation in ±")
