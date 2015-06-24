// Example 4.3;current
clc;
close;
clear;
// given 
format('v',6)
pf1=0.866;//power factor
pf2=0.1736;//power factor
ph1=acosd(pf1);//phase angle in degree
ph2=acosd(pf2);//phase angle in degree
ir=120;//current in amperes
n2=110;//number of turns
n1=440;//number of turns
i2d=(n2/n1)*ir;//current in amperes
io=5;//current in amperes
aioi2=ph2-ph1;//change in angle in degree
i1=sqrt(io^2+i2d^2+(2*io*i2d*cosd(aioi2)));//current in amperes
disp(i1,"current is, (A)=")
