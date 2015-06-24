//Caption: Determineper pole (a)Number of cross magnetising ampereturns,and (b)Demagnetising ampereturns 
//Exa:7.12
clc;
clear;
close;
I=100//Current(in A)
c=500//Armature conductors
p=6//Poles 
t=10//Angle of lead(in degree)
a=2//Wave wound
e=(10*p)/2
F_d=(c*I*2*e)/(2*a*p*180)
disp(F_d,'(a)Number of cross magnetising ampereturns=')
F_c=(c*I)*(1-((2*e)/180))/(2*a*p)
disp(F_c,'(b)Demagnetising ampereturns=')