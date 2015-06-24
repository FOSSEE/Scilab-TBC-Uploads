//exa 1.17
clc;clear;close;
format('v',8);
pf=0.8;//power factor
delf=1;//%//drop in frequency(delf/f)
//delP=-2*(sind(theta))^2*delf
theta=acosd(pf);//degree
delP_BY_delf=-2*sind(theta)^2;//increase in load wrt frequency
disp(-delP_BY_delf,"1% drop in frequency, Increased in Load(%)");
