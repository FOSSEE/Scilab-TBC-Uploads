//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex5_7.sce.

clc;
clear;
A=5e-4;
l=0.4;
N=200;
mew_r=380;
mew_not=4e-7*%pi;
mew=mew_r*mew_not;

printf("\n (a)")
R=(l*1e-6)/(mew*A);
printf("\n  Reluctance of the core=%1.4f*10^6 AT/Wb \n",R)

printf("\n (b)")
phi=800e-6;    //flux in weber
F=phi*1e6*R;
I=F/N;
printf("\n  Magnetizing current=%1.4f A \n",I)
//Answer vary dueto round off error
