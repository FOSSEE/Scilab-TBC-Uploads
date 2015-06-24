clc
clear

Ma=5400;                //in kg/hr
Tfw=42;                 //in C
P=7.6;                  //in bar
Mf=670;                 //in kg/hr
x=0.98;                 //Dryness Fraction
CV=31000;               //kJ/kg
Ms=Ma/Mf;
Hf=175.81;              //in kJ/kg
Hfw=Hf;

//Now at 7.6 bar pressure
Hf=711.8;               //in kJ/kg
Hfg=2055.2;             //in kJ/kg

H=Hf+(x*Hfg);
Eff=100*(Ma*(H-Hfw))/(Mf*CV);
printf('Boiler Efficiency %3.1f percent',Eff);
printf('\n');

Me=(Ms*(H-Hfw))/(2257);
printf('Equivalent evaporation: %3.2f kg/kg of coal',Me);
printf('\n');
