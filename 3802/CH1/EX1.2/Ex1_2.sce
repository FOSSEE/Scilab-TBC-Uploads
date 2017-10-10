//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex1_2.sce.

clc;
clear;
R25=120;           //resistance of copper wire at 25 degree celsius
T1=25;             //temperature1 in degree celsius
T2=55;             //temperature in degree celsius
alphazero=4.2e-3;   //temperature coefficient
R55=(R25*(1+(T2*alphazero)))/(1+(T1*alphazero));            //resistance of the copper wire at a temperature of 55 degree celsius
printf("The resistance value  for the resitor(copper wire)=%3.3f ohms",R55)
