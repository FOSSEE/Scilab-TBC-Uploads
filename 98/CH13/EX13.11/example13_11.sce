//Chapter 13
//Example 13_11
//Page 322

clear;clc;

Va=230;
Ic=25;
Id=50;
Ie=30;
If=40;
Vb=235;
Lac=50;
Lcd=25;
Lde=25;
Lef=50;
Lfb=50;
r=0.3;
l=200;

//resistance for 1000 m length of conductor
R=2*r;

Rac=R*Lac/1000;
Rcd=R*Lcd/1000;
Rde=R*Lde/1000;
Ref=R*Lef/1000;
Rfb=R*Lfb/1000;

//considering drop across various sections of the distributor and adding them to calculate Ia
Ia=(Va-Vb+(Ic*Rcd)+(Ic+Id)*Rde+(Ic+Id+Ie)*Ref+(Ic+Id+Ie+If)*Rfb)/(Rac+Rcd+Rde+Ref+Rfb);

Iac=Ia;
Icd=Ia-Ic;
Ide=Ia-Ic-Id;
Ief=Ia-Ic-Id-Ie;
Ifb=Ia-Ic-Id-Ie-If;

Vd=Va-(Iac*Rac+Icd*Rcd);

printf("Resistance per 1000 m of distributor = %.2f ohm \n\n", R);
printf("Resistance of section AC = %.3f ohm \n", Rac);
printf("Resistance of section CD = %.3f ohm \n", Rcd);
printf("Resistance of section DE = %.3f ohm \n", Rde);
printf("Resistance of section EF = %.3f ohm \n", Ref);
printf("Resistance of section FB = %.3f ohm \n\n", Rfb);

printf("Ia = %.1f A \n\n", Ia);

printf("(i) Current in section AC = Iac = %.2f A \n", Iac);
printf("    Current in section CD = Icd = %.2f A \n", Icd);
printf("    Current in section DE = Ide = %.2f A \n", Ide);
printf("    Current in section EF = Ief = %.2f A \n", Ief);
printf("    Current in section FB = Ifb = %.2f A \n\n", Ifb);

printf("(ii) Voltage at D = Vd = %.2f V \n", Vd  );  

