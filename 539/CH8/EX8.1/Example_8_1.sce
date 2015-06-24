//Maximum Flaw Length Computation

clear;
clc;

printf("\tExample 8.1\n");

sigma=40*10^6; // in Pa  Tensile stress
E=69*10^9;  //Modulus of elaticity  in pa
Ys=0.3;  //Specific surface energy  in N/m^2

//Maximum length of a surface flaw
a=2*E*Ys/(%pi*sigma^2);

printf("\nMaximum lemgth of a surface falw without fracture : %.4f mm\n",a/10^-3);

//End