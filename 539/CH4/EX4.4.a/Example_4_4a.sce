//Computations of ASTM Grain Size Number

clear;
clc;

printf("\tExample 4.4\n");

printf("\n\tPart A");

N=45;           //No. of grains per square inch

//Dterminin grain size no.  N=2^(n-1)
n=(log(N)/log(2))+1;
printf("\nGrain size no. is %.1f\n",n);

//End