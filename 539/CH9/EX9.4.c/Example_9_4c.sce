//Determining eutectoid ferrite

clear;
clc;

printf("\t Example 9.4\n");

C0=0.35;
Ca=0.022;
C_Fe3C=6.7;

C_p=0.76;

Wp=(C0-Ca)/(C_p-Ca);
W_a=(C_p-C0)/(C_p-Ca);

Wa=(C_Fe3C-C0)/(C_Fe3C-Ca);
printf("\n\tPart C");

Wae=Wa-W_a;
printf("\nMass fraction of eutectoid ferrite : %.3f\n",Wae);

//End