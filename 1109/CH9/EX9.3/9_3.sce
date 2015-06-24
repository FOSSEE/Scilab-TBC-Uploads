clear;
clc;
Ro=500;Td=1*(10^-6);Tr=0.3*(10^-6);
n=1.1*((Td/Tr)^(3/2));
N=round(n);
printf("-Number of T-sections required = %f\n",N);
C=Td/(1.07*N*Ro);
printf("-C = %f microfarads\n",C*(10^6));
L=(Ro*Td)/(1.07*n);
printf("-L = %f mH",L*(10^3));
//the difference in result of L is due to erroneous value in textbook.
disp("The difference in result of L is due to erroneous value in textbook")
