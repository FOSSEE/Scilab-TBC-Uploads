clc
clear

//Conditions at 8 bar
P=8;            //in bars
x=0.8;          //Dryness Fraction
Hf=721.1;       //in kJ/kg
Hfg=2048.0;     //in kJ/kg
H1=Hf+(x*Hfg);
H2=H1+410;          //After adding 410 kJ of heat
Hg=2769.1;      //in kJ/kg
printf('The Enthalpy of steam: %3.1f kJ/kg',H2);
printf('\n');
printf('The steam is superheated')
printf('\n');
V2=0.240;       //in m^3/kg
Vg=V2;
Den=1/Vg;
printf('The Density of steam: %3.3f kg/m^3',Den);
printf('\n');
