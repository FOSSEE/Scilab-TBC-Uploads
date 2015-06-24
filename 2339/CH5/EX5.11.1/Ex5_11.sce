clc
clear

Ma=1100;            //in kg/hr
CV=33000;               //in kJ/kg
Tfw=46;             //in C
P=10;           //in bar
x=0.9;          //Dryness Fraction
Eff=0.81;           //Efficiency

Hf=762.8;
Hfg=2015.3;
H=Hf+(x*Hfg);
Hfw=192.6;

Mf=(Ma*(H-Hfw))/(CV*Eff);
printf('Amount of Coal Consumed per hour: %3.1f kg',Mf);
printf('\n');
