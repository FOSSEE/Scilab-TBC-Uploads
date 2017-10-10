//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex9_1.sce.

clc;
clear;
slots=24;
pole=4;

printf("\n   (a)")
//when all slots are wound
m=slots/pole;
alpha=180/m;
Kd=sind(m*alpha/2)/(m*sind(alpha/2));
printf("\n  Distribution factor when all slots are wound=%1.3f",Kd)

printf("\n   (b)")
//only 4 adjacent slots are wound
m=4;
Kd=sind(m*alpha/2)/(m*sind(alpha/2));
printf("\n  Distribution factor when only four slots per pole are wound=%1.3f",Kd)
