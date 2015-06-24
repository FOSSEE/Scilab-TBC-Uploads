//Ex:2.44
clc;
clear;
close;
GdB=44;// gain in dB
G=10^(44/10);// gain
XB=(4*%pi)/G;// beam solid angle in sreradian
X3dB=sqrt(4/%pi)*sqrt(XB);// beam width in radian
X3dB1=X3dB*180/%pi;// beam width in degree
printf("The beam width = %f degree", X3dB1);