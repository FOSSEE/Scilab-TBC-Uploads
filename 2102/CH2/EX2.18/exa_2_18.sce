// Exa 2.18
clc;
clear;
close;
// Given data
miu_n= 0.13;// in m^2/Vs
miu_p= 0.05;// in m^2/Vs
q=1.6*10^-19;// in C
ni=1.5*10^16;// per m^3
sigma_intrinsic= q*ni*(miu_n+miu_p);// in (Ωm)^-1
disp(sigma_intrinsic,"The conductivity of silicon in Intrinsic condition in (Ωm)^-1 is : ")

// Part (b)
n= 5*10^28/10^9;
sigma= q*n*miu_n;// in (Ωm)^-1
disp(sigma,"The conductivity with donar impurity in (Ωm)^-1 is : ")

// Part (c)
p= 5*10^28/10^8;
sigma= q*p*miu_p;// in (Ωm)^-1
disp(sigma,"The conductivity with acceptor impurity in (Ωm)^-1 is : ")

// Part (d)
p_desh= p-n;// in /m^3
sigma= q*p_desh*miu_p;// in (Ωm)^-1
disp(sigma,"The conductivity with donar and acceptor impurity in (Ωm)^-1 is : ")

// Note : Answer in the book of part (a) may be miss printed or wrong
