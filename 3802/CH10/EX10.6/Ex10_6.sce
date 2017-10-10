//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex10_6.sce

clc;
clear;
s=0.05;    //Full load slip of 5 percentage
Iss_by_Isf=5;   //Taken from question statement 
Ts_by_Tf=s*(Iss_by_Isf)^2;
printf("\n  Starting torque interms of full load torque=%1.2f*Tf",Ts_by_Tf)
