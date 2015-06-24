//Exa 10.2
clc;
clear;
close;
//given data :
n=0.8;//in m
H=500;//in km
a=6370;//in km
D=1349.07;//in Km
f_muf=10;//in MHz
f_muf=f_muf*10^6;//in Hz
f=10;//in MHz
f=f*10^6;//in Hz
// Formula : n=sqrt(1-81*N/f^2)
Nmax=(1-n^2)*f^2/81;//in Hz;
fc=9*sqrt(Nmax);//in Hz
// Formula : f_muf/fc=sqrt(D^2/(4*(H+D^2/(8*a))))+1
D1=2*[H+D^2/(8*a)]*sqrt((f_muf/fc)^2-1);//in Km
Dskip=2*H*sqrt((f_muf/fc)^2-1);//in Km
disp(D1,"Assuming the earth is curved the ground range in Km : "); 