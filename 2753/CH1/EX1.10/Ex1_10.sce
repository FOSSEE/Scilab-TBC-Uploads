//Example 1.10: 
clc;
clear;
close;
//given data :
nh=2*10^21;// acceptor atoms in atoms/m^3
Na=nh;
format('e',8)
disp(Na,"(i). hole concentration,Na(atoms/m^3) = ")
mu_h=0.17;// mobility of holes in m^2/V-s
e=1.6*10^-19;// in C
sigma=nh*mu_h*e;
format('v',6)
disp(sigma,"conductivity,(ohm^-1-m^-1) = ")
//conductivity is calculated wrong in the book
