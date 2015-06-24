clc;
clear all;
lemda=0.022*1e-10;//wavelength in meters
th=45;//angle in degree
m=9.1*1e-31;
c=3*1e8;//velocity of light in free space
h=6.62*1e-34;//plank's constant
x=cos(th);
disp(x);
dlemda=h*(1-cos(th))/(m*c);//delta lemda 
disp('m',dlemda,'delta lemda is=');
//lemda-lemda1=dlemda s0.. lemda1=lemda-dlemda
lemda1=lemda-dlemda;//wavelength of incident X-rays
disp('m',lemda1,'wavelength of incident X-rays');
//there is variation in the answer than book.. checked in calculator too..(mistake of book)
