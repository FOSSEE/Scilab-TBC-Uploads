clc;
clear all;
disp("heat loss per hour")
r1=120;//mm
r2=r1+50;//mm
r3=r2+40;//mm
kA=0.092;//W/(m*C)
kB=0.062;//W/(m*C)
t1=390;// degree C 
t3=40;// degree C
L=210;//m
Q1=2*3.1416*L*(t1-t3)/((log(r2/r1))/kA+(log (r3/r2))/kB);
Q=(3600/1000)*2*3.1416*L*(t1-t3)/((log(r2/r1))/kA+(log (r3/r2))/kB);
disp("kJ/hr",Q,"total heat loss per hour =")
X=2*3.1416*r1*L
qp=Q*1000/X;
disp("kJ/(m^2*hr)",qp,"total heat loss per m^2 of pipe surface =")

qo=Q*1000/(2*3.1416*r3*L);
disp("kJ/(m^2*hr)",qo,"total heat loss per m^2 of outer surface =")

//Q=2*3.1416*L(t1-t2)/(log(r2/r1)/kA)
t2=t1-Q1/(2*3.1416*L/(log(r2/r1)/kA));
disp ("degree C",t2,"temperature between two layers =")


