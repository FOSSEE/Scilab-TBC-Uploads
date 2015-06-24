clear;
clc;

printf("\tExample 6.3\n");

//From draph in the question
//stress and strain can be obtained

si2=150;           // in MPa
si1=0;
e2=0.0016;
e1=0;
d0=12.8*10^-3;    //Initial Diameter in m

printf("\n\tPart C");
A0=%pi*d0^2/4;
sig=450*10^6;     //tensile strength in MPa

F=sig*A0;
printf("\nMaximum load sustained is %d N\n",F);

//End