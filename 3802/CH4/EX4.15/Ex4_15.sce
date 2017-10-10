//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex4_15.sce.

clc;
clear;
q=1e-9;
r_p=10e-2;
r_q=20e-2;
epsilon_not=8.854e-12;
V=(q/(4*%pi*epsilon_not))*((1/r_p)-(1/r_q));
printf("\n The potential difference between the two points=%2.0f volt",V)
