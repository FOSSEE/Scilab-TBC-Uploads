// exa 9.11 Pg 273

clc;clear;close;

// Given Data
d=26;// mm
L=0.25;//m
F=300;// N
mu=0.14;// coefficient of thread friction
p=5;// mm (for normal series)

dc=d-p;// mm
dm=d-p/2;// mm
l=2*p;// mm
alfa=atand(l/%pi/dm);// degree
fi=atand(mu);// degree
To=F*L;// N.m (Torque applied by the operator)
//Tf=W*dm/2*tand(alfa+fi);// N.mm
// And Tf=To
W=To*1000/(dm/2*tand(alfa+fi));// N
printf('The force required for the job is : %.f N',W)
// Note - answer in the textbook is wrong.
