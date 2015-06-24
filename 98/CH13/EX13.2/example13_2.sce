//Chapter 13
//Example 13_2
//Page 314

clear;clc;

ll=300;
max_drop=10;
p=1.78*1e-8;
Lac=40;
Lcd=60;
Lde=50;
Lef=100;
Lfb=50;
Ic=30;
Id=40;
Ie=100;
If=50;

Ief=If;
Ide=Ief+Ie;
Icd=Ide+Id;
Iac=Icd+Ic;

Rac=Lac/100;
Rcd=Lcd/100;
Rde=Lde/100;
Ref=Lef/100;

vd=Iac*Rac+Icd*Rcd+Ide*Rde+Ief*Ref;
r=max_drop/vd;
//for 100 m length of the conductor area is given by,
area=p*100*2/r;

printf("Resistance of 100 m length of distributor = %.5f ohm \n\n", r);
printf("Area = %.3f cm^2 \n", area*1e4);
  
