clc
clear

Ms=7.3;             //kg/kg of fuel
Tfw=46;             //in C
P=10;               //in bar
FOE=1.17;           //Factor of Evaporation
Eff=0.79;
Me=FOE*Ms;
printf('Equivalent Evaporation: %3.2f kg/kg of coal',Me);
printf('\n');

Hfw=192.6;              //in kJ/kg
Hg=2778.1;              //in kJ/kg
Tsat=179.9;             //in C
Cps=2.1;                //in kJ/kg K
H=(2257*FOE)+Hfw;
Tsup=((H-Hg)/Cps)+Tsat;
printf('Temperature of Superheated Steam: %3.1f C',Tsup);
printf('\n');

CV=(Ms*(H-Hfw))/Eff;
printf('Calorific Value: %3.1f kJ/kg',CV);
printf('\n');
