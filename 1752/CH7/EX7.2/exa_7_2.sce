//Exa 7.2
clc;
clear;
close;
//given data
lamda=2*10^-6;// in m
C1=0.374*10^-15;
T=2000+273;// in K'
C2=1.4388*10^-2;

epsilon=0.3;
sigma=5.67*10^-8;
T1=300;// in K
T2=200;// in K
del_T=T1-T2;
h=12;// in W/m^2 degree C
d=4*10^-2;// diameter in m
l=1;// in m
A=%pi*d*l;
// Heat transfer rate by radiation,
q_r= epsilon*sigma*A*(T1^4-T2^4);// in W
// Heat transfer rate by convection,
q_c=h*A*del_T;// in W
// Total heat transfer,
q=q_r+q_c;
// Formula q=U*A*del_T
U=q/(A*del_T);// Overall heat tranfer coefficient
disp(U,"Overall heat tranfer coefficient in W/m^2 degree C");

//Note: Value of q_c is wrong in the book, so the answer in the book is wrong