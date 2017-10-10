//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex2_12.sce

clc;
clear;
R=50;   //Resistance in ohm
Is=1/30;  //Source current in Ampere
Rs=40.92;  //Parallel resistance in ohm
Gs=1/Rs;   //Parallel conductance in mho
I=(Is*Rs)/(Rs+R);
printf("\n  Current through the 50 ohm resistor=%1.3f A \n",I)
