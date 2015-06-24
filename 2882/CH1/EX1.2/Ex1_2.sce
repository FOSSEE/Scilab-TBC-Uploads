//Tested on Windows 7 Ultimate 32-bit
//Chapter 1 Introduction to Electronics Pg no. 9
clear;
clc;

//Given Data

//Colour coding of four band resistor
//Given Sequence: [Orange Orange Yellow Silver]
orange=3;
yellow=4;
silver=0.1;

//Solution

R=(orange*10+orange)*(10^(yellow));//Base resistance in ohms
R_min=R*(1-silver);//Least possible resistance in ohms using variance
R_max=R*(1+silver);//Most possible resistance in ohms using variance

printf("Resistance should be in between %d ohms and %d ohms",R_min,R_max);
//Error in textbook as 330K is not 33000 and is 330000

