//Chapter 13
//Example 13_12
//Page 323

clear;clc;

Va=440;
Ic=100;
Id=200;
Ie=250;
If=300;
Vb=430;
Lac=150;
Lcd=150;
Lde=50;
Lef=100;
Lfb=150;
r=0.01;
l=600;

//resistance for 100 m length of conductor
R=2*r;

Rac=R*Lac/100;
Rcd=R*Lcd/100;
Rde=R*Lde/100;
Ref=R*Lef/100;
Rfb=R*Lfb/100;

//considering drop across various sections of the distributor and adding them to calculate Ia
Ia=(Va-Vb+(Ic*Rcd)+(Ic+Id)*Rde+(Ic+Id+Ie)*Ref+(Ic+Id+Ie+If)*Rfb)/(Rac+Rcd+Rde+Ref+Rfb);

Iac=Ia;
Icd=Ia-Ic;
Ide=Ia-Ic-Id;
Ief=Ia-Ic-Id-Ie;
Ifb=Ia-Ic-Id-Ie-If;

Ib=abs(Ifb);

P=Iac^2*Rac+Icd^2*Rcd+Ide^2*Rde+Ief^2*Ref+Ifb^2*Rfb;

printf("Resistance per 100 m of distributor = %.2f ohm \n\n", R);
printf("Resistance of section AC = %.3f ohm \n", Rac);
printf("Resistance of section CD = %.3f ohm \n", Rcd);
printf("Resistance of section DE = %.3f ohm \n", Rde);
printf("Resistance of section EF = %.3f ohm \n", Ref);
printf("Resistance of section FB = %.3f ohm \n\n", Rfb);

printf("Ia = %.1f A \n\n", Ia);

printf("(i) Current supplied from end A = Ia = %.2f A \n", Ia);
printf("    Current supplied from end B = Ib = %.2f A \n\n", Ib);

printf("(ii) Power loss in the distributor = %.3f kW \n\n", P/1000);  

