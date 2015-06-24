//Tested on Windows 7 Ultimate 32-bit
//Chapter 1 Introduction to Electronics Pg no. 8
clear;
clc;

//Given Data

//Colour coding of four band resistor
//Given Sequence: [Gray Red Red Gold]
gray=8;
red=2;
gold=0.05;

//Solution

R=(gray*10+red)*(10^(red));//Base resistance in ohms
R_min=R*(1-0.05);//Least possible resistance in ohms using variance
R_max=R*(1+0.05);//Most possible resistance in ohms using variance

printf("Resistance should be in between %d ohms and %d ohms",R_min,R_max);
//Error in textbook as 5% of 8200 is 410 and not 41

