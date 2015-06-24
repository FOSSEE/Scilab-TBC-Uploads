clear;
clc;
x=4+(7*%i);
v=115/sqrt(3);
pm=(v^2/sqrt((real(x)^2)+(imag(x)^2)))-(real(x)*v^2/((real(x)^2)+(imag(x)^2)));
pm3=round(pm*100)/100;
pm3=3*pm3;
mprintf("the maximum 3 phase=%fMW",pm3);
