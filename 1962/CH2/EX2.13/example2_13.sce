//example 2.13
//page 84
clc; funcprot(0);
//initialisation of variable
GammaB=9810*0.9;//unit weight barrage
Gamma=9.81*1.09*1000;//unit weight of liquid
Area=15*4;
Volume=3*Area;
AW=150*1000;//additional weight
W=GammaB*Volume;
TW=AW+W;//total weight
depth=TW/Gamma/Area;
disp(depth,"depth submerged (m)=");
clear
