clc;
clear all;
alpha=0.35*1e-40;//polarizability of gas
N=2.7*1e25;
e0=8.854*1e-12;//permittivity of vacume
er=1+(N*alpha/e0);//relative permittivity
disp(er,'relative permittivity is=');
