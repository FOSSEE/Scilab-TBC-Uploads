//Ex:3.2
clc;
clear;
close;
// The phase difference w=Bd*cos(a)=(2%pi/y)*(y/4)*cos(a)=(%pi/2)*cos(a)
// Therefore, Et=Io(exp^(-j(%pi/2*cos(a)+k))+1+exp^(j(%pi/2*cos(a)+infinite)))=Eo(1+2*cos(%pi/2*cos(a+k)))
// the null appear, when, 1+2*cos((%pi/2)*cos(a_n)+k), a_n is equal to 33.56
// therefore , 1+2*cos((%pi/2)*cos(33.56)+k)=0
// cos((%pi/2)*cos(33.56)+k)=-1/2
// (%pi/2)*cos(33.56)+k= 2%pi/3
// k=(2%pi/3)-((%pi/2)*cos(33.56))
k=(2*%pi/3)-((%pi/2)*cos(33.56*%pi/180));// progressive phase shift in radian
k1=k*180/%pi;// progressive phase shift in degree
// The position of main beam a_m occurs when
// ((%pi/2)*cos(a_m))+B=0
// cos(a_m)= -B*2/%pi=-(%pi/4)*(2/%pi)=-1/2
a_m=(acos(-1/2)*180/%pi);// the position of main beam width in degree
printf("The progressive phase shift = %d degree", k1);
printf("\n The position of main beam width in degree = %d degree", a_m);