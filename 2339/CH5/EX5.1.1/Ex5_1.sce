clc
clear

Mf=1300;                //in kg
Ma=13000;               //in kg
P=7;                    //in bar
Cpw=4.187;              //in kJ/kg K
CV=30000;               //in kJ/kg
x=0.95;                 //Dryness Fraction
Tfw=40;                 //in C

Hfw=Tfw*Cpw;

//At 7 bar
Hf=697.2;               //in kJ/kg
Hfg=2066.3;             //in kJ/kg

H=Hf+(x*Hfg);
Ms=Ma/Mf;

Me=(Ms*(H-Hfw))/(2257);
printf('Equivalent evaporation: %3.2f kg/kg of coal',Me);
printf('\n');

Eff=100*(Ma*(H-Hfw))/(Mf*CV);
printf('Boiler Efficiency: %3.1f Percent',Eff);
printf('\n');
