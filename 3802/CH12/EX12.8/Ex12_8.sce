//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex12_8.sce

clc;
clear;
Vl=110;
f=50;

printf("\n (a)")
R_YR=0;
R_BY=100;
R_RB=200;
W_YR=0; //since R_YR value is zero
W_BY=Vl^2/R_BY;
W_RB=Vl^2/R_RB;
printf("\n  Phase power=%3.1f W \n",W_YR+W_BY+W_RB)


printf("\n (b)")
X_YR=95;
X_BY=0;
X_RB=0;
W_YR=Vl^2/X_YR;
W_BY=0; //since X_BY value is zero
W_RB=0; //since X_RB value is zero
printf("\n  Reactive  power=%3.2f VAR",W_YR+W_BY+W_RB)

