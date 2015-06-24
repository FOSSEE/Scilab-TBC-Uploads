//Determining ferrite and cementite phase

clear;
clc;

printf("\t Example 9.4\n");

printf("\n\tPart A");
C0=0.35;
Ca=0.022;
C_Fe3C=6.7;

Wa=(C_Fe3C-C0)/(C_Fe3C-Ca);
W_Fe3C=(C0-Ca)/(C_Fe3C-Ca);

printf("\nMass fraction of total ferritic phase  : %.2f",Wa);
printf("\nMass fraction of Fe3C : %.2f\n",W_Fe3C);

//End