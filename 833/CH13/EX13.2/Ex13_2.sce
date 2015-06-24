//Caption: Find (a)speed (b)number of poles
//Exa:13.2
clc;
clear;
close;
f1=25//Frequency of motor(in hertz)
f2=60//Frequency of generator(in hertz)
p=10//Number of poles
N=(120*f1)/p
disp(N,'(a)Speed(in r.p.m)=')
P=(f2*120)/(N)
disp(P,'(b)Number of poles=')