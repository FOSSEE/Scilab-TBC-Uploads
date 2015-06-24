//Exa 8.17
clc;
clear;
close;
//given data
ho=5000;// in W/m^2 degree C
rho=988.1;// in kg/m^3
K=0.6474;
D=555*10^-9;// in m^2/s
Pr=3.54;
n=100;
d_i=2.5*10^-2;// in m
ri=d_i/2;
d_o=2.9*10^-2;// in m
ro=d_o/2;
Cp=4174;// in J/kg degree C
Mc=8.333;// in kg/s
Mw=Mc;
t_c1=30;// in degree C
t_c2=70;// in degree C
t_n1=100;// in degree C
t_n2=t_n1;// in degree C
R_fi=0.0002;// in m^2 degree C/W (In the book, there is miss print in this line,they took here R_fi = .002)
// Heat gain by water
Q=Mc*Cp*(t_c2-t_c1);
// Also Q= U*A*del_tm
del_t1=t_n1-t_c1;//in degree C
del_t2=t_n2-t_c2;//in degree C
del_tm= (del_t1-del_t2)/log(del_t1/del_t2); 
// Mw= 1/4*%pi*d_i^2*V*rho*N, here
N=n;
V=4*Mw/(%pi*d_i^2*rho*N);
// Formula Re=V*d_i/v, here
v=D;
Re=V*d_i/v;
// Formula Nu= hi*d_i/K = 0.023*Re^0.8*Pr^0.33
hi= 0.023*Re^0.8*Pr^0.33*K/d_i;
// Formula 1/Vi= 1/hi + R_fi + ri/ro*1/ho
Vi= 1/(1/hi + R_fi + ri/ro*1/ho);// in W/m^2 degree C
//Formula Q = Vi*(N*%pi*d_i*L)*del_tm
L= Q/(Vi*(N*%pi*d_i)*del_tm);
disp(L,"Length of the tube bundle in m");







