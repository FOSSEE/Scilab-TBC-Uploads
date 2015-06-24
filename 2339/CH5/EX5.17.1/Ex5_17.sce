clc
clear

Ma=1800;        //kg/hr
P=12;           //in bar
x=0.97;         //Dryness Fraction
Tfw=105;        //in C
Mf=2050;        //in kg/hr
CV=27400;       //in kJ/kg

Q=Mf*CV;
printf('Heat Supplied: %3.2f kJ',Q);
printf('\n');

//At 12 bar pressure
Hf=798.6;           //in kJ/kg
Hfg=1986.2;         //in kJ/kg
H=Hf+(x*Hfg);
Hfw=4.187*Tfw;

Me=(Ma*(H-Hfw))/(2257*Mf);
printf('Equivalent Evaporation: %3.2f kg/kg of coal',Me);
printf('\n');

Eff=(Ma*100*(H-Hfw))/(CV*Mf);
printf('Efficiency of boiler: %3.2f Percent',Eff);
printf('\n');
