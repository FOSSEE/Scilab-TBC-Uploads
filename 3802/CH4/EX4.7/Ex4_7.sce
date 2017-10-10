//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex4_7.sce.

clc;
clear;
q1=1e-4;
q2=2e-4;
l=10e-2;
x=l*1e2/(1+sqrt(q2/q1));
printf("\n  Distance between q1 and the point on the line joining two charges where the electric field is zero=%1.1f cm",x)
