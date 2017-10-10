//Determine the resultant current for two alternating currents

clc;
clear;

ti1=30;
ti2=45;

i1=20*(expm(%i*%pi/6));
i2=40*(expm(%i*%pi/4));

i=i1+i2;

ti=atand(imag(i)/real(i));

printf('The resultant current = %g sin(314t + %g(degrees)) A\n',abs(i),ti)
printf('        Or %g/_%g A\n',abs(i),ti)
