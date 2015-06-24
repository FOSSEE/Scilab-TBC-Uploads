//Example 11.3
clc;
clear;
close;
format('v',9);
//Given data :
l=2;//meter
d0=0;//meter
d1=0.3;//meter
d2=1.0;//meter
d3=1.2;//meter
d4=1.6;//meter
d5=2.0;//meter
d6=1.4;//meter
d7=1.0;//meter
d8=0.4;//meter
d9=0.3;//meter
d10=0.2;//meter
V0=0;//meter
V1=0.5;//meter
V2=0.7;//meter
V3=0.8;//meter
V4=1.0;//meter
V5=1.2;//meter
V6=0.9;//meter
V7=0.8;//meter
V8=0.6;//meter
V9=0.5;//meter
V10=0.3;//meter
Q=l/3*(d0*V0+4*d1*V1+2*d2*V2+4*d3*V3+2*d4*V4+4*d5*V5+2*d6*V6+4*d7*V7+2*d8*V8+4*d9*V9+2*d10*V10+d0*V0);//cum/sec
disp(Q,"Rate of discharge in cum/sec : ");
