//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex5_8.sce.

clc;
clear;
mew_rA=250;
mew_rB=320;
lA=40e-2;
lB=25e-2;
aA=5e-4;
aB=7e-4;
N=250;
printf("\n (a)")
mew_not=4e-7*%pi;
mew_A=mew_rA*mew_not;
mew_B=mew_rB*mew_not;
R=((lA/(mew_A*aA))+(lB/(mew_B*aB)));
printf("\n   The total reluctance=%g*10^3 AT/Wb \n",R*1e-3)

printf("\n (b)")
phi=2.5e-3;
F=phi*R;
I=F/N;
printf("\n   The magnetizing current=%2.2f AT \n",I)
//Answer vary dueto round_off error
