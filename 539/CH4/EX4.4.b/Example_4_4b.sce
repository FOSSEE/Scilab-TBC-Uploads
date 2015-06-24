//Number of Grains Per Unit Area

clear;
clc;

printf("\tExample 4.4\n");

printf("\n\tPart B");
N=45;           //No. of grains per square inch
n=(log(N)/log(2))+1;
M=85;

Nm=(100/M)^2*2^(n-1);
printf("\nAt magnification of 85x\n");
printf("No. of grains per inch square are %.1f\n",Nm);

//End