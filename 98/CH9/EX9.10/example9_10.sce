//Chapter 9
//Example 9_10
//Page 219

clear;clc;

//From the figure
Daad=20;
Dadb=100;
Dbbd=20;

Dab=Daad+Dadb;
Dabd=Daad+Dadb+Dbbd;
Dadbd=Dadb+Dbbd;

gmr=0.7788;
Daa=gmr;
Dadad=gmr;

Dm=(Dab*Dabd*Dadb*Dadbd)^(1/4);

Ds=(Daa*Daad*Dadad*Daad)^(1/4);

l=4*1e-4*log(Dm/Ds);

printf("GMR of conductor = %.4f cm \n\n", gmr);
printf("Equivalent self GMD of one phase = %.3f m \n\n", Ds);
printf("Equivalent mutual GMD = %.3f m \n\n", Dm);
printf("Loop Inductance/km = %.3f mH/km \n\n", l*1e3);
