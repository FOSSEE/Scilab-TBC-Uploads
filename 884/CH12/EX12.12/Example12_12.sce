//computation of van't hoff factor

clear;
clc;
funcprot(0);

printf("\t Example 12.12\n");

R=0.0821;//gas constant, L atm/K mol
T=298;//temp, K
pie=0.465;//osmotic pressure, atm
M=0.01;//molarity of the solution, M
i=pie/(M*R*T);//vant hoff factor of KI

printf("\t the vant hoff factor of KI at 25 C is : %4.2f\n",i);

//End
