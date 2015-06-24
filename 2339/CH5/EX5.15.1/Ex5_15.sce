clc
clear

Ms=7.5;         //kg/kg of coal
P=11;           //in bar
Tf=70;          //in C
Eff=0.75;       //Efficiency
FOE=1.15;       //Factor of Evaporation
Cps=2.1;        //in kJ/kg K
Hfw=293;        //in kJ/kg
H=(FOE*2257)+Hfw;

//At 11 bar
Hg=2781.7;      //in kJ/kg
Tsat=184.1;     //in C
Tsup=((H-Hg)/Cps)+Tsat;
DOS=Tsup-Tsat;      //Degree of Superheat
printf('Degree of Superheat: %3.1f C',DOS);
printf('\n');

Me=(Ms*(H-Hfw))/2257;
printf('Equivalent evaporation: %3.2f kg/kg of coal',Me);
printf('\n');

CV=(Ms*(H-Hfw))/Eff;
printf('Calorific value of Boiler: %3.2f kJ/kg ',CV);
printf('\n');
