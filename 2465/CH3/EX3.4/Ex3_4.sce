//Chapter-3,Example 4,Page 57
clc;
close;

m=234  // atomic mass of uranium

M_0 = 4   // initial mass of uranium

t_half= 2.48*10^5  // half life of uranium 

t= 62000*365*24*3600  // time period

lamda=8.88*10^-14

M= M_0*exp(-lamda*t)

printf('Mass of uranium left unchanged is %.3f mg', M)

N= (M*6.023*10^20)/m

A= lamda*N

printf(' \n activity of uranium is %.3f disintigrations/sec ', A)
