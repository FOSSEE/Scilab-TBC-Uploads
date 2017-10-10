//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex5_12.sce.

clc;
clear;
N=20000;
R=5e2;
V=250;
mmf=3471;
pi=0.04e-3;

printf("\n  (a)")
I=mmf/N;
L=(N*pi)/I;
printf("\n Inductance of the coil=%1.2f H \n",L)

printf("\n  (b)")
t=log(1/(1-((I*R)/V)))*(L/R);
printf("\n Time required for the current to reach pickup value=%1.2f ms",t*1E3)
//The book answer for t (=3.93 ms) is obtained only if R=500 ohm.Otherwise (R=5000) we cannot get the answer
//So there is a mistake in R value given 
