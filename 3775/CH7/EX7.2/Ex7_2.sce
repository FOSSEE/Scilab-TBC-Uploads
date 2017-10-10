//Ex 7.2 page 260

clc;
clear;
close;

N1=1100;// rpm
Va1=220;// V
N2=900;// rpm

Va2=Va1*N2/N1;// V
delta=Va2/Va1;// duty ratio
printf('\n duty ratio = %.2f',delta)
