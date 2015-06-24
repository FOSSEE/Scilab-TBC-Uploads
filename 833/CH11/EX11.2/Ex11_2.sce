//Caption: Find (a)Speed of motor (b)%Slip
//Exa:11.2
clc;
clear;
close;
p=6//Number of poles
f_s=50//Stator frequency(in c/s)
f_r=2//Rotor frequency(in c/s)
n_s=(120*f_s)/p
n=(f_r*120)/p
s=n_s-n
disp(s,'(a)Speed of motor(in r.p.m)=')
S=(n/n_s)*100
disp(S,'(b)%Slip(in %)=')