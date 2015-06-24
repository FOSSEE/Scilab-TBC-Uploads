clc
clear

P=12;                   //in bar
CV=34000;               //in kJ/kg
T=250;                  //in C
Ms=10;                  //in kg/kg of coal
Tfw=36;                 //in C
Hfw=150.74;             //in kJ/kg
Hg=2784.8;              //in kJ/kg
Tsup=T;
Tsat=188;               //in C
Cps=2.1;                //in kJ/kg K
H=Hg+(Cps*(Tsup-Tsat));

Me=(Ms*(H-Hfw))/2257;
printf('Equivalent evaporation: %3.2f kg/kg of coal',Me);
printf('\n');

Eff=(Me*250)/21.296;
printf('Boiler Power: %3.2f kW',Eff);
printf('\n');
