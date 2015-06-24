clc;
clear;
format('e',11);
R=0.005;
a=0.001;
L=4*3.14*10^-7*R*(log(8*R/a)-3/2);
disp(L,"The inductance of the loop,L(in H)=");
