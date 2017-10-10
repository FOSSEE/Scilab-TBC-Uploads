//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex1_3.sce.

clc;
clear;
V=20;               //voltage rating of the battery in volts
I=0.2;              //current rating of the battery in amphere
R=V/I;              //from ohm's law
P=(I^2)*R;
printf("\nThe value of resistance=%d ohms",R)
printf("\nPower rating or heat dissipated=%d watts",P)
