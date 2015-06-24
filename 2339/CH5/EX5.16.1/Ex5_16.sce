clc
clear

Ma=17000;       //in kg/hr
P=14;           //in bar
x=0.95;         //Dryness Fraction
Tfw=102;            //in C
Mf=2050;            //in kg/hr
CV=27400;       //Calorific Value
HS=Mf*CV;
printf('Heat Supplied per hour: %3.2f kJ',HS);
printf('\n');

Hf=830.3;           //in kJ/kg
Hfg=1959.7;         //in kJ/kg
Hfw=427.5;          //in kJ/kg

H=Hf+(x*Hfg);
Eff=(Ma*100*(H-Hfw))/(Mf*CV);
printf('Efficiency of Boiler: %3.2f Percent',Eff);
printf('\n');

Ms=Ma/Mf;
Me=(Ms*(H-Hfw))/2257;
printf('Equivalent evaporation: %3.2f kg/kg of coal',Me);
printf('\n');
