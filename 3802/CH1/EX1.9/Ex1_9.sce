//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex1_9.sce.

clc;
clear;
C1=100;      //capacitance value in microfarad
C2=150;       //capacitance value in microfarad
C3=200;      //capacitance value in microfarad
  
//CASE1
printf("\n (a)")
Cs=(C1*C2*C3)/((C2*C3)+(C1*C2)+(C3*C1));
printf("\n  The equivalent capacitance in series connection=%2.3f microfarad",Cs)

//CASE2
printf("\n (b)")
Cp=C1+C2+C3;
printf("\n  The equivalent capacitance in parallel connection=%3.0f microfarad",Cp)
