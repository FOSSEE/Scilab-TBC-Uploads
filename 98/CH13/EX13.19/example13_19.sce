//Chapter 13
//Example 13_19
//Page 330

clear;clc;

l=900;
Va=400;
Ic=50;
Id=100;
Ie=150;
Lac=200;
Lcd=300;
Lde=300;
Leb=100;
r=0.0001;
x=500;
i=0.5;

Rac=Lac*r;
Rcd=Lcd*r;
Rde=Lde*r;

Ide=Ie;
Icd=Ie+Id;
Iac=Ic+Icd;

Vac=Iac*Rac;
Vcd=Rcd*Icd;
Vde=Ide*Rde;

tdrop=Vac+Vcd+Vde;

Vab=i*r*l^2/2;
Vad=i*r*(l*x-x^2/2);

Vb=Va-(tdrop+Vab);
Vd=Va-(Vac+Vcd+Vad);

disp("DROPS DUE TO CONCENTRATED LOADS: ");
printf("Iac = %d A \n", Iac);
printf("Icd = %d A \n", Icd);
printf("Ide = %d A \n\n", Ide);

printf("Drop in section AC = %.2f V \n", Vac);
printf("Drop in section CD = %.2f V \n", Vcd);
printf("Drop in section DE = %.2f V \n", Vde);
printf("Total drop over AB = %.2f V \n\n\n", tdrop);

disp("DROPS DUE TO UNIFORM LOADING: ");
printf("Drop over AB = %.2f V \n", Vab);
printf("Drop over Ad = %.2f V \n\n", Vad);

printf("(i) Voltage at point B = %.2f V \n\n", Vb);
printf("(ii) Voltage at point D = %.2f V \n\n", Vd);



