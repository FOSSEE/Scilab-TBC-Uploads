clc
clear

//At 10 bar
Hg=2778.1;              //in kJ/kg
Cp=2.1;                 //in kJ/kg K
T=50;
CV=30000;           //in kJ/kg

H=Hg+(Cp*T);
C=4.187;
Tf=30;
Hfw=C*Tf;

Ms=800/100;

Me=(Ms*(H-Hfw))/2257;
printf('Equivalent Evaporation: %3.2f kg/kg of coal',Me);
printf('\n');

Eff=(Ms*100*(H-Hfw))/CV;
printf('Efficiency of Boiler and grate: %3.1f percent',Eff);
printf('\n');
