//Example 3_2
clc();
clear;
//To calculate the thickness of quarter wave plate
lamda=6000       //units in armstrongs
lamda=lamda*10^-10         //units in mts
n0=1.554
ne=1.544
d=(lamda)/(4*(n0-ne))         //units in mts
printf("Thickness of quarter wave plate is %.6fmts",d)
