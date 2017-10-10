//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex5_5.sce.

clc;
clear;
N=200;
A=5e-4;
I=4;
l=60e-2;

printf("\n\t (a)")
F=N*I;
printf("\n Magnetomotive force=%d AT \n",F)

printf("\n\t (b)")
mew_r=1;
mew_not=4e-7*%pi;
mew=mew_r*mew_not;
R=l/(mew*A);
phi=(F)/R;
printf("\n Total flux=%1.5f microWb \n",phi*1e6)

printf("\n\t (c)")
B=phi/A;
printf("\n Flux density=%1.4f mWb/m^2",B*1e3)
//Answer vary dueto round off error
//The unit for B(flux density) is Wbm/m^2
