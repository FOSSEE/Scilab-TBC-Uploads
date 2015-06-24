//Chapter 13
//Example 13_10
//Page 321

clear;clc;

Va=220;
Ic=20;
Id=40;
Ie=50;
If=30;
Vb=220;
Lac=100;
Lcd=150;
Lde=150;
Lef=100;
Lfb=100;
area=1;
p=1.7*1e-6;

//resistance for 100 m length of conductor
R=2*p*100/area;

Rac=R*Lac;
Rcd=R*Lcd;
Rde=R*Lde;
Ref=R*Lef;
Rfb=R*Lfb;

//considering drop across various sections of the distributor and adding them to calculate Ia
Ia=(Va-Vb+(Ic*Rcd)+(Ic+Id)*Rde+(Ic+Id+Ie)*Ref+(Ic+Id+Ie+If)*Rfb)/(Rac+Rcd+Rde+Ref+Rfb);

Ve=Va-(Ia*Rac+(Ia-Ic)*Rcd+(Ia-Ic-Id)*Rde);

printf("Resistance per 100 m of distributor = %.2f*10^-4 ohm \n\n", R*1e4);
printf("Resistance of section AC = %.3f ohm \n", Rac);
printf("Resistance of section CD = %.3f ohm \n", Rcd);
printf("Resistance of section DE = %.3f ohm \n", Rde);
printf("Resistance of section EF = %.3f ohm \n", Ref);
printf("Resistance of section FB = %.3f ohm \n\n", Rfb);

printf("Ia = %.1f A \n", Ia);

printf("Minimum consumer voltage = Ve = %.2f V \n", Ve);  

