//Page Number: 105
//Example 2.19
clc;
//Given
c=3D+8; //m/s
a=2.29; //cm
b=1.02; //cm
a1=a/100 ;//m
b1=b/100; //m
f=6D+9; //Hz
e=1;
mu=1/(c^2);

//Cut off frequency
lamc=2*a1;
fc=c/lamc;
w=2*%pi*fc;

//Attenuation constant
a=(w*sqrt(1-((f/fc)^2)))/c;;
adb=-20*log10(exp(-a));
disp('dB/m',adb,'Attenuation constant:');
