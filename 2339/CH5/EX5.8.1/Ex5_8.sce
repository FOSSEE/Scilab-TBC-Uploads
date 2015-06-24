clc
clear

Hf=762.8;               //in kJ/kg
Hfg=2015.3;             //in kJ/kg
x=0.95;                 //Dryness Fraction
Ma=1000;
Eff=0.75;
CV=31000;

H=Hf+(x*Hfg);
Cpw=4.187;
T=50;

Hfw=Cpw*T;
Q=Ma*(H-Hfw);

Mf=Q/(Eff*CV);
y=Mf/0.9;

Eff1=(Q*100)/(y*CV);
printf('Efficiency of Boiler and grate: %3.1f percent',Eff1);
printf('\n');
