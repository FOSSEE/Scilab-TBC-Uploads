//Page Number: 298
//Example 5.12
clc;
//Given
f=9D+9;//hz
v0=361;//V
i0=30D-3;//A
l=0.1;//cm
l1=l/100;//m
x=2.408;
j1x=0.582;
ebym=1.759D+11;

//Maximum power output
n=1;
pout=2*i0*v0*x*j1x/(2*%pi*(n+(3/4)));//W
disp('W',pout,'Maximum power output:');

//Operating repeller voltage
vr=((6.744D-6*sqrt(v0)*l1*f)/(n+(3/4)))-v0;//v
disp('V',vr,'Operating repeller voltage:');
