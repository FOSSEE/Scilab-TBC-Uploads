//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex5_9.sce.

clc;
clear;
//from the given figure
l_not=350e-3;
lc=150e-3;
la=1e-3;
A_not=400e-6;
Ac=800e-6;
pi=1e-3;          //flux in weber
mew_r=340;
mew_not=4e-7*%pi;

R_not=l_not/(mew_r*mew_not*A_not);
Rc=lc/(mew_r*mew_not*Ac);
Ra=la/(mew_not*Ac);
F=pi*(R_not/2+Rc+Ra);
printf("\n Total mmf=%4.2f AT",F)
//Answer vary dueto round_off error
