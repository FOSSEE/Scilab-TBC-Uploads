//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex4_24.sce.

clc;
clear;
d=1e-2;
l=15e-2;
h=10e-2;
Q=750e-12;
epsilon_not=8.854e-12;

A=l*h;
C=(epsilon_not*A)/d;
printf("\n  Capacitance=%2.3f pF \n",C*1e12)
V=Q/C;
printf("\n  Potential difference=%2.1f volt \n",V)

epsilon_r=4;
C=(epsilon_not*epsilon_r*A)/d;
printf("\n  New capacitance=%2.3f pF \n",C*1e12)
V=Q/C;
printf("\n  New potential difference=%2.3f volt \n",V)

//There is a error in the book calculation for finding new potential difference(V) ,the answer is given V=14.125 volt insteadof 14.118 volt
