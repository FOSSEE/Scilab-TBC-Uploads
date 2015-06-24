// Example 5.8;resolution
clc;
clear;
format('v',6)
// given :
fsr=200;//full scale reading in volts
d=100;//number of divisions
sc=1/10;//scale
sd1=fsr/d;//one sccale divisions
R=sc*sd1;//resolution
disp(R,"resolution is, (V)=")
