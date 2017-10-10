//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_7.sce

clc;
clear;

printf("\n (a)")
T=(2*%pi);   //Time value for one cycle
V=15;  //Maximum voltage in volt
t0=%pi/4;t1=%pi; //time values for particular period which is taken from the given voltage wave form
Vav=(1/T)*integrate('V*sin(t)','t',t0,t1);
printf("\n Average value=%1.3f volt \n",Vav)

printf("\n (b)")
Vrms=sqrt(((V^2)/T)*integrate('(1-cos(2*t))/2','t',t0,t1)); //sin^2(t)=(1-cos(2t))/2
printf("\n RMS value=%1.2f volt \n",Vrms)
//Answer given in the book for Vrms is wrong
