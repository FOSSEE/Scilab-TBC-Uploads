//Ex 2.15 page 77

clc;
clear;
close;

Isb=3000;// A
f=50;// Hz
I=sqrt((Isb**2*1/2/f)*f) ;// A
I2t=I**2/2/f;// sq.A/s
printf('I2t rating = %d A**2/s',ceil(I2t))

