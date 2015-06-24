clc
clear

Ma=18000;           //in kg/hr
P=10;               //in bar
x=0.97;             //Dryness Fraction
Tfw=40;             //in C
Mf=2050;            //in kg/hr
CV=28000;           //kJ/kg

//At 10 bar
Hf1=762.8;
Hfg1=2015.3;
H=Hf1+(x*Hfg1);

Hfw=167.6;

Eff=(Ma*100*(H-Hfw))/(Mf*CV);
printf('Boiler efficiency: %3.2f Percent',Eff);
printf('\n');

EA=((Ma/Mf)*(H-Hfw))/2257;
printf('Equivalent Evaporation: %3.2f kg/kg of coal',EA);
printf('\n');
