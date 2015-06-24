//Exa 10.1
clc;
clear;
close;
//given data :
H=500;//in km
n=0.8;//in m
f_muf=10;//in MHz
f_muf=f_muf*10^6;//in Hz
f=10;//in MHz
f=f*10^6;//in Hz
// Formula : n=sqrt(1-81*N/f^2)
Nmax=(1-n^2)*f^2/81;//in Hz;
fc=9*sqrt(Nmax);//in Hz
Dskip=2*H*sqrt((f_muf/fc)^2-1);//in Km
disp(Dskip,"Assuming the earth is flat the range in Km : ");
//Note : Answer in the book is wrong.