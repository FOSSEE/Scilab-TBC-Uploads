//Determination of Phases Present

clear;
clc;

printf("\tExample 9.3\n");

printf("\n\tPart A");
C1=40;  // Overall alloy composition
Cb=98;
Ca=10;

Wa=(Cb-C1)/(Cb-Ca);
Wb=(C1-Ca)/(Cb-Ca);

printf("\nMass fractions for alpha and beta phases are : %.2f and %.2f respectively\n",Wa,Wb);

//End