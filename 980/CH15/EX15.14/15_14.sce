clc;
clear;
format('e',11);
f=5*10^6;
t=10^-3;
c=3*10^8;
d=c*t;
h=d/2;                  //assuming that the virtual and atual heights are almost same.
disp(h,"height of the layer(in meter)=");
N=f^2/81*10^-6;                   //as phi=0.
disp(N,"N(in electronc/cc)=");
