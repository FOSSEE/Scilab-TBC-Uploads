//Exam:5.7
clc;
clear;
close;
E_f=3.75;//Fermi energy(in eV)
e=1.602*10^-19;
W_f=e*E_f;//fermi energy in joules
t=10^-14;//mean free time between the collisions(in second)
m=9.1*10^-31;//mass of electron
v_f=(2*W_f/m)^(1/2);//maximum velocity of an electron in a metal(in m/s)
mobility=e*t/m;//mobility of electrons(in m^2/V-s)
disp(v_f,'maximum velocity of an electron in a metal(in m/s)=');
disp(mobility,'mobility of electrons(in m^2/V-s)=')