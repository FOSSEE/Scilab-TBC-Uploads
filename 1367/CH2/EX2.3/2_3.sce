//Find number of particles scattered at 75 and 135 degree
//Ex:2.3
clc;
clear;
close;
n=44;//no. of particles scattered per minute
a=90;//angle in degrees
x=sind(a/2);
c=n*x^4;
disp(c,"Proportionality constant = ");
b=75;//angle in degrees
y=sind(b/2);
n1=c/y^4;
disp(n1,"No. of particles scattered at 75 degree (in per minute) = ");
d=135;//angle in degrees
z=sind(d/2);
n2=c/z^4;
disp(n2,"No. of particles scattered at 135 degree (in per minute) = ");