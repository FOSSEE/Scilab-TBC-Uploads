//Page Number: 106
//Example 2.22
clc;
//Given
c=3D+8; //m/s
a=2.286; //cm
a1=a/100; //m
b=1.016; //cm
b1=b/100; //m
sig=5.8D+7; //s/m
f=9.6D+9; //Hz

w=2*%pi*f;
mu=%pi*4D-7;
et=377;

lam=c/f;
lamc=2*a1;
r=lam/lamc;

Rs=sqrt((w*mu)/(2*sig));
ac=(Rs*(1+(2*(b1/a1)*r*r)))/(et*b1*sqrt(1-(r^2)));
adb=-20*log10(exp(-ac));
disp('dB/m',adb,'Conductor attenuation constant:');
