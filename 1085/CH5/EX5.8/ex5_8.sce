//Exam:5.8
clc;
clear;
close;
E_f=2.1;//fermi energy(in eV)
e=1.602*10^-19;
m=9.1*10^-31;
W_f=e*E_f;//fermi energy in joules
v_f=(2*W_f/m)^(1/2);//velocity of an electrons at fermi level(in m/sec)
disp(v_f,'velocity of an electrons at fermi level(in m/sec)')