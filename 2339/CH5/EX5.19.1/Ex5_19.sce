clc
clear

Ma=5500;        //kg/hr
P=1;            //bar
x=0.94;         //Dryness Fraction
Tfw=40;         //in C
Mf=600;         //kg/hr
CV=32000;       //kJ/kg
Hfw=Tfw*4.187;

//At 1 bar pressure
Hf=417.5;       //kJ/kg
Hfg=2258;       //kJ/kg
H=Hf+(x*Hfg);
Ms=Ma/Mf;

Me=(Ms*(H-Hfw))/2257;
printf('Equivalent Evaporation: %3.3f kg/kg of coal',Me);
printf('\n');

Eff=(Ms*100*(H-Hfw))/CV;
printf('Efficiency: %3.2f percent',Eff);
printf('\n');
