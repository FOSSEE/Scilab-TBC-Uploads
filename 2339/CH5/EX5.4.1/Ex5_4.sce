clc
clear

Ma=35500;           //kg of steam
Mf=3460;
CV=39500;
Ms=Ma/Mf;


Hfw2=313.9;             //in kJ/kg
Hfw1=71.4;              //in kJ/kg

Q=Ma*(Hfw2-Hfw1);           //Heat added in economizer
H=2915.0;           //in kJ/kg

Me=(Ms*(H-Hfw2))/2257;
printf('Equivalent evaporation: %3.2f kg/kg of Oil',Me);
printf('\n');

Eff1=(Ma*100*(H-Hfw2))/(Mf*CV);
printf('Thermal Efficiency of boiler: %3.1f Percent',Eff1);
printf('\n');

Eff2=(Ma*100*(H-Hfw1))/(Mf*CV);
printf('Thermal Efficiency of Boiler plant: %3.1f Percent',Eff2);
printf('\n');

HU=860875000/(Mf*CV);
printf('Heat Utilized by Economizer: %3.1f Percent',HU);
printf('\n');
