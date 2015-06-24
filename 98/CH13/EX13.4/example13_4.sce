//Chapter 13
//Example 13_4
//Page 315

clear;clc;

Va=250;
Ic=15;
Id=20;
Ib=12;
Lab=75;
Lcd=50;
Lbc=100;
area=0.27;
p=1.78*1e-6;

//single core resistance of the section of 100m length
R=p*100*100/area;
Rab=R*Lab/100*2;
Rbc=R*Lbc/100*2;
Rcd=R*Lcd/100*2;

Icd=Id;
Ibc=Icd+Ic;
Iab=Ibc+Ib;

Vb=Va-Iab*Rab;
Vc=Vb-Ibc*Rbc;
Vd=Vc-Icd*Rcd;

printf("(i) CURRENTS IN VARIOUS SECTIONS: \n");
printf("I_AB = %.0f A \n", Iab);
printf("I_BC = %.0f A \n", Ibc);
printf("I_CD = %.0f A \n\n", Icd);

printf("(ii) Single core resistance of the section of 100m length = %.3f ohm \n", R);
printf("Resistance of section AB = %.3f ohm \n", Rab);
printf("Resistance of section BC = %.3f ohm \n", Rbc);
printf("Resistance of section CD = %.3f ohm \n\n", Rcd);


printf("(iii) Voltage at tapping point B = Vb = %.2f V \n", Vb);
printf("Voltage at tapping point C = Vc = %.2f V \n", Vc);
printf("Voltage at tapping point D = Vd = %.2f V \n", Vd);
