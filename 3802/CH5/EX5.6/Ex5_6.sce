//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex5_6.sce.

clc;
clear;
l=2.5e-3;
A=200e-4;
phi=0.015;            //flux in weber
mew_r=1;
mew_not=4e-7*%pi;
mew=mew_r*mew_not;
R=l/(mew*A);
F=phi*R;
printf("\n The Magnetomotive force=%d AT \n",F)
