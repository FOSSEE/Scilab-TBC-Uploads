//Chapter 2
//page no 53
//given
clc;
clear ;
n_i=2*10^17;          //electron/m*m*m
p=5.7*10^20;            //holes/m*m*m
u_n=0.14;         //in  m*m/V*s
u_p=0.05;          //in m*m/V*s
q_n=1.6*10^-19;     //in Columbs
q_p=1.6*10^-19;     //in Columbs
n=(n_i)^2/p;
mprintf("\n Electron :n is  %e electrons ",n);//result
n=7*10^13
P=(n*u_n*q_n)+(p*u_p*q_p);
printf("\n Conductivity :P is  %.2f S/m ",P);// result
// answer misprinted
