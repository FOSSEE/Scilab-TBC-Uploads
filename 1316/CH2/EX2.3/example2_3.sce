//Chapter 2
//Example 2.3
//Page 60

clear;
clc;

R1 = 1000;
R2 = 842;
R3 = 500;

printf("Because bridge is nulled we find R4 using equation:\n R1R4=R3R2 \n")
//Calculation of R4
R4=R3*R2/R1;
printf("%.0f ohm",R4)


