//Tested on Windows 7 Ultimate 32-bit
//Chapter 1 Introduction to Electronics Pg no. 9
clear;
clc;

//Given Data

//Colour coding of five band resistor
//Given Sequence: [Yellow Gray Violet Black Green]
yellow=4;
gray=8;
violet=7;
black=0;
green=0.005;

//Solution

R=(yellow*100+gray*10+violet)*(10^(black));//Base resistance in ohms
R_min=R*(1-green);//Least possible resistance in ohms using variance
R_max=R*(1+green);//Most possible resistance in ohms using variance

printf("Resistance should be in between %.2f ohms and %.2f ohms",R_min,R_max);//Upto 2 decimal points
//Decimal approximation error w.r.t. textbook
