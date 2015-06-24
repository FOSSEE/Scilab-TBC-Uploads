clc
clear

//At 10 bar pressure
Tsat=179.9;
Tsup=250;
Cps=2.1;                //in kJ/kg K

Hg=2778.1;              //in kJ/kg
Ms=10;                  //in kg/kg of coal
Hsup=Hg+(Cps*(Tsup-Tsat));

Hfw=155;
Me=(Ms*(Hsup-Hfw))/2257;

FOE=Me/Ms;          //Factor of Evaporation
BP=(Me*370)/21.296;
printf('Equivalent Evaporation: %3.1f kg/kg of coal',Me);
printf('\n');
printf('Boiler Power: %3.1f kW',BP);
printf('\n');
