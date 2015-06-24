clc
clear

Ma=2400;            //in kg
Mf=240;             //in kg
P=12;               //in bar
CV=33500;           //in kJ/kg
Tfw=120;            //in C
Cpw=4.187;
Hfw=Cpw*Tfw;
H=2784.8;           //in kJ/kg
Mfa=Mf-(0.1*Mf);
Eff=(Ma*100*(H-Hfw))/(Mfa*CV);
printf('Thermal Efficiency: %3.1f percent',Eff);
printf('\n');

Eff1=(Ma*100*(H-Hfw))/(Mf*CV);
printf('Thermal Efficiency of boiler and grate: %3.1f percent',Eff1);
printf('\n');
