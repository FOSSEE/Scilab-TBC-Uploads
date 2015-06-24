clear;
clc;
kx=0,ky=.866,kz=.5,Eo=10^-9 /(36*%pi),Uo=4*%pi*10^-7;
k=sqrt(kx*kx+ky*ky+kz*kz);
w=k/(sqrt(Uo*Eo));
disp(w*10^-6,'w im Mrad/sec');
l=2*%pi/k;
disp(l,'lamda = ')
