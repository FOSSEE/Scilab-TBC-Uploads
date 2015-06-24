clear;
clc;
v2(1)=1;
v2(2)=.983664-.032316*%i;
a=1.6;
v2(3)=v2(1)+a*(v2(2)-v2(1));
mprintf("the voltage =%f+(%f)jV",real(v2(3)),imag(v2(3)));
