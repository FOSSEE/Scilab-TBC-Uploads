clc
clear

Mf=255;         //in kg
x=0.94;         //Dryness Fraction
CV=30100;       //in kJ/kg
P=11.5;         //in bar
Ma=2100;        //in kg
Tfw=25;         //in C
Ms=Ma/Mf;

Hfw=104.9;          //in kJ/kg
Hf=790.1;           //in kJ/kg
Hfg=1993.2;         //in kJ/kg
H=Hf+(x*Hfg);

Me=(Ms*(H-Hfw))/2257;
Eff=(Ma*100*(H-Hfw))/(Mf*CV);
printf('Equivalent Evaporation: %3.2f kg/kg of coal \n',Me)
printf('Thermal Efficiency: %3.1f percent',Eff);
printf('\n');
