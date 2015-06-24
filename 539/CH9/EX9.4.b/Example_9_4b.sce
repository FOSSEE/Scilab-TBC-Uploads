//Determining proeutectoid ferrite and pearlite

clear;
clc;

printf("\t Example 9.4\n");

C0=0.35;
Ca=0.022;
C_Fe3C=6.7;

printf("\n\tPart B");
C_p=0.76;

Wp=(C0-Ca)/(C_p-Ca);
W_a=(C_p-C0)/(C_p-Ca);

printf("\nMass fraction of Pearlite : %.2f",Wp);
printf("\nMass fraction of proeutectoid ferrite : %.2f\n",W_a);

//End