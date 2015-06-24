//Example 7.2 //draw the curve
clc;
clear;
close;
a=1.7;//aceleration in kmphps
b=3.3;//kmphps
s=1400;//m
va=42;//kmph
tr=((s*10^-3)/va)*3600;//secomds
k=((1/(2*a)))+((1/(2*b)));//
vm=((tr/(2*k))-sqrt(((tr^2)/(4*k^2))-((3600*s*10^-3)/k)));//in kmph
t1=vm/a;//seconds
t3=vm/b;//seconds
t2=tr-(t1+t3);//seconds
T=[0;(t1);(t1+t2);(t1+t2+t3)];
V=[0;vm;vm;0];
plot2d(T,V);
xlabel("Time in seconds ")
ylabel("Spped in Km per Hour")
