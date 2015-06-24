//Chapter 13
//Example 13_22
//Page 334

clear;clc;

l=300;
va=240;
lab=150;
ib=120;
lbc=50;
ic=80;
lca=100;
r=0.03;

rd=2*r;
rab=rd*lab/100;
rbc=rd*lbc/100;
rca=rd*lca/100;

Ia=86.67;
Iab=Ia;
Ibc=Ia-ib;
Ica=Ia-(ib+ic);

Vb=va-Iab*rab;
Vc=Vb+Ibc*rbc;

printf("Resistance per 100m = %.2f ohms \n", rd);
printf("Rab = %.2f ohms \n", rab);
printf("Rbc = %.2f ohms \n", rbc);
printf("Rca = %.2f ohms \n\n", rca);

printf("(i) Ia = %.2f A \n", Ia);
printf("Iab = %.2f \n", Iab);
printf("Ibc = %.2f \n", Ibc);
printf("Ica = %.2f \n\n", Ica);

printf("(ii) Vb = %.2f V \n", Vb);
printf("     Vc = %.2f V \n", Vc)


