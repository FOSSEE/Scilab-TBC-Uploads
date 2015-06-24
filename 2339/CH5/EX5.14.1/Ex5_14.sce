clc
clear

Ma=18000;           //in kg/hr
P=12;           //in bar
x=0.97;         //Dryness Fraction
CV=27400;       //in kJ/kg
Mf=2050;            //in kg>hr

Qs=Mf*CV;
printf('Heat Supplied per hour: %3.1f kJ/hr',Qs);
printf('\n');

//At 12 bar 
Hf=798.6;           //in kJ/kg
Hfg=1986.2;         //in kJ/kg
H1=Hf+(x*Hfg);

//At 105 C
Hfw=438.9;          //in kJ/kg
Eff=(Ma*100*(H1-Hfw))/Qs;
printf('Thermal Efficiency: %3.2f Percent',Eff);
printf('\n');

Ms=Ma/Mf;
printf('Factor of Evaporation: %3.2f ',Ms);
printf('\n');
