//Chapter 13
//Example 13_23
//Page 335

clear;clc;

v=220;
ib=10;
ic=20;
id=30;
ie=10;
rab=0.1;
rbc=0.05;
rcd=0.01;
rde=0.025;
rea=0.075;

//by solving for current through the loop,
I=29.04;
printf("(i) I = %.2f A \n\n", I);

iab=I;
ibc=I-ib;
icd=I-(ib+ic);
ide=I-(ib+ic+id);
iea=I-(ib+ic+id+ie);
printf("Iab = %.2f A \n", iab);
printf("Ibc = %.2f A \n", ibc);
printf("Icd = %.2f A \n", icd);
printf("Ide = %.2f A \n", ide);
printf("Iea = %.2f A \n", iea);

