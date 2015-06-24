//Exa 5.15
clc;
clear;
close;
//given data
delta=38.1*10^-6;// in m^2/s
Pr=501;
Prs=98;
K=0.138;// in W/mk
T_infinite=353;// in K
T_s=423;// in K
V=2;// in m/s
d=12.5*2*10^-3;// in m
Re=V*d/delta;
n=0.36// for Pr >= 10
C=0.26;// for Re between 10^3 and 2*10^5
m=0.6;// for Re between 10^3 and 2*10^5
Nu= C*Re^m*Pr^n*(Pr/Prs)^(1/4);
h= Nu*K/d;// in W/m^2 degree C
A=%pi*25*10^-3;
del_t=T_s-T_infinite;
// Formula q=h*A*del_t
q_by_L = h*A*del_t;
disp(q_by_L,"Initial rate of heat loss per meter length of cylinder");

// Note: calculation in the book is wrong  so answer in the book is wrong