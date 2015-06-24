//A Textbook of Chemical Engineering Thermodynamics
//Chapter 1
//Introduction and Basic Concepts
//Example 4

clear;
clc;


//Given
F = 600; //weight in N
t = 120; //time in sec
h = 0.18; //height of stairs in m

//To determine the power developed in man
S = 20*h; //total vertical displacement in m
W = F*S; //work done in J
P = W/t; //power developed
mprintf('Power developed is %i W',P);


//end