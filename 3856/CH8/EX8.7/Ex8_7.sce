//Expression for Chemical Potential of Mg3(PO4)2

//Example 8.7

clc;
clear;

v1=3;

v2=2;

v=5;

mv=((v1^v1)*(v2^v2))^(1/v);

printf("mu(Mg3(PO4)2) = mu0(Mg3(PO4)2)+ %.0f",v);

printf("RTln(%.2fm)",mv);
