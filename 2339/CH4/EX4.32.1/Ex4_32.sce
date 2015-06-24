clc
clear

//At 10 bar pressure
m=1/(0.9*0.194);

Hf1=762.6;              //in kJ/kg
x1=0.9;                 //Dryness Fraction
Hfg1=2013.6;            //in kJ/kg
H1=Hf1+(x1*Hfg1);

Hf2=640.1;              //in kJ/kg
Hfg2=2107.4;            //in kJ/kg
x2=(H1-Hf2)/Hfg2;
Vg2=0.375;

Ms=(1/(x2*Vg2));
Vg3=0.462;
//Now mass of steam blown off
M=m-Ms;

printf('Mass of steam blown off: %2.3f kg',M);
printf('\n');

V=1;                //Volume in m^3
x3=V/(Ms*Vg3);
printf('Dryness fraction of steam: %2.3f ',x3);
printf('\n');
