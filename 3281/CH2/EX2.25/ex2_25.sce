//Page Number:108 
//Example 2.25
clc;
//Given
c=3D+8; //m/s
p01=2.405;
a=1/100;; //cm
p11=1.841;

fc01=((c*p01)/(2*%pi*a));
fc11=((c*p11)/(2*%pi*a));
bw=fc01-fc11;
disp('Ghz',bw/10^9,'Bandwidth:');
