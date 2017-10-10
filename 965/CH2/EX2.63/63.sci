clc;
clear all;
disp("Heat transfer rate")
r1=2/2;//m
r2=r1+2/100;//m
r3=r2+5/1000;//m
t1=300;//degree C
t2=50;//degree C
kA=58;// W/(m*C)
kB=0.116;// W/(m*C)
Rfilm=0.0023;// K/W
RthA=(r2-r1)/(4*3.1416*kA*r1*r2)
RthB=(r3-r2)/(4*3.1416*kB*r3*r2)
Q=(t1-t2)/(RthA+RthB+Rfilm);
disp("kW",Q/1000,"Rate of heat in Q =") 

