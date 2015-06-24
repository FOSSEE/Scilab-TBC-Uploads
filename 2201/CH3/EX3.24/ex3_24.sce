// Exa 3.24
clc;
clear;
close;
// Given data
format('v',13)
Mu_p = 500;// in cm^2/v-s
kT = 0.0259;
Toh_p = 10^-10;// in sec
p_o = 10^17;// in cm^-3
q= 1.6*10^-19;// in C
A=0.5;// in square meter
del_p = 5 * 10^16;// in cm^-3
n_i= 1.5*10^10;// in cm^-3    
D_p = kT * Mu_p;// in cm/s
L_p = sqrt(D_p * Toh_p);// in cm
x = 10^-5;// in cm
p = p_o+del_p* %e^(x/L_p);// in cm^-3
// p= n_i*%e^(Eip)/kT where Eip=E_i-F_p
Eip= log(p/n_i)*kT;// in eV
Ecp= 1.1/2-Eip;// value of E_c-E_p in eV
Ip= q*A*D_p/L_p*del_p*%e^(x/L_p);// in A
disp(Ip,"The hole current in A is : ")
Qp= q*A*del_p*L_p;// in C
disp(Qp,"The value of Qp in C is : ")

// Note: There is a calculation error to evalaute the value of hole current hence the value of hole current in the book is wrong
