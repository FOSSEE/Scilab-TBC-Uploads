//Example 3.32:frequency and resistance
clc;
clear;
close;
r1=400;//ohms
c1=1;//micro farads
r2=1000;//ohms
r3=800;//ohms
c3=0.5;//micro farads
f=((1/((2*%pi)*sqrt(r1*r3*c1*10^-6*c3*10^-6))));//Hz
x=((c3/c1)+(r1/r3));//
r4=r2*x;//ohms
disp(round(f),"frequency is ,(Hz)=")
disp(r4,"resistance is ,(ohm)=")
