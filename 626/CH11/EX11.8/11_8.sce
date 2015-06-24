clear;
clc;
close;
disp("Example 11.8")

mf=0.8
g=9.8 //in m/s^2
Is=345 //in s
delvt=-g*Is*log(1-mf)
m=500000 //in kg
q0=100000 //in Pa
tb=60 //in s
Af=20 //in m^2
Cd=0.3 //mean drag coefficient
delvd=log(1-mf)*(Af/m)*q0*(tb/(1-mf))*Cd
delv=delvt+delvd
disp(delv,"Terminal speed of rocket vehical excluding gravitatinal effect in m/s :")

