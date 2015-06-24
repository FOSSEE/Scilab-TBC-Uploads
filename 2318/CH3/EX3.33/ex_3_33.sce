//Example 3.33:frequency and resistance
clc;
clear;
close;
r1=200;//ohms
c1=1;//micro farads
r3=400;//ohms
r4=1000;//ohms
c2=2;//micro farads
x=((r4/r3)-(c1/c2));//
r2=r1*x;//ohms
f=((1/((2*%pi)*sqrt(r1*r2*c1*10^-6*c2*10^-6))));//Hz
disp(r2,"resistance is ,(ohm)=")
disp(round(f),"frequency is ,(Hz)=")
