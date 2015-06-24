clear;
clc
a=3;
lc=2*a;
Zs=500;n=377;c=3*(10^8);
lo=sqrt(1-((n/Zs)^2))*lc;
f=c/lo;
f1=f/(10^7);
printf("Frequency of dominant mode = %f GHz",round(f1*100)/100);
