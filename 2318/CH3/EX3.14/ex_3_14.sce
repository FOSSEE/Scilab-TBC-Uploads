//Example 3.14: Insolution resistance of the cable
clc;
clear;
close;
y=10;//Mega ohms
d=200;//divisioms
d1=126;//divisions
d2=100;//divisions
c=1;//assume
t=30;//seconds
x=0.4343
r=((x*t)/(c*log10(d/d1)));//
rd=((x*t)/(c*log10(d/d2)));//
x=rd/r;//
ro=((y-(10*x))/x);//Mega ohms
disp(round(ro),"Insolution resistance,R(M-ohm) = ")
