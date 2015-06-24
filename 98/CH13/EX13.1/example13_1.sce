//Chapter 13
//Example 13_1
//Page 313

clear;clc;

Va=300;
Ic=100;
Id=150;
Ie=200;
Ib=50;
Lac=500;
Lcd=400;
Lde=600;
Leb=400;
r=0.01;

R=r*2;
Rac=R*Lac/1000;
Rcd=R*Lcd/1000;
Rde=R*Lde/1000;
Reb=R*Leb/1000;

Ieb=Ib;
Ide=Ieb+Ie;
Icd=Ide+Id;
Iac=Icd+Ic;

Vc=Va-Iac*Rac;
Vd=Vc-Icd*Rcd;
Ve=Vd-Ide*Rde;
Vb=Ve-Ieb*Reb;

printf("Resistance per 1000m of distributor = %.2f ohm \n\n", R);
printf("Resistance of section AC = %.3f ohm \n", Rac);
printf("Resistance of section CD = %.3f ohm \n", Rcd);
printf("Resistance of section DE = %.3f ohm \n", Rde);
printf("Resistance of section EB = %.3f ohm \n\n", Reb);

printf("I_EB = %.0f A \n", Ieb);
printf("I_DE = %.0f A \n", Ide);
printf("I_CD = %.0f A \n", Icd);
printf("I_AC = %.0f A \n\n", Iac);

printf("Potential difference at load point C = Vc = %.1f V \n", Vc);
printf("Potential difference at load point D = Vd = %.1f V \n", Vd);
printf("Potential difference at load point E = Ve = %.1f V \n", Ve);
printf("Potential difference at load point B = Vb = %.1f V \n", Vb);  



