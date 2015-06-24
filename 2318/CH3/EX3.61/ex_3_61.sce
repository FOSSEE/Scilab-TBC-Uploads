//Example 3.61;resistance and inductance
clc;
clear;
close;
p=0;//
r2=10;//ohms
r4=900;//ohms
c3=0.9;//micro-F
c4=0.15;//micro-F
r=((r2*c3*10^-6)/(c4*10^-6));//ohms
l=r2*r4*c3*10^-3;//mH
disp(r,"resistance is ,(ohm)=")
disp(l,"inductance is ,(mH)=")
