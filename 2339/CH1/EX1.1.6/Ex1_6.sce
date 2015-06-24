clc
clear

Th=0.22;        //Thermal Efficiency
Hr=1260;        //Heat Rejected in MJ/hr
CV=42;          //Calorific Value of Coal
X=1-Th;
HI=Hr/X;        //Heat Input in MJ/hr

O=((HI-Hr)*1000)/3600;        //Output
Mf=HI/CV;       //Mass of Fuel Used

printf('Power Output is %2.2f kW',O);
printf('\n');
printf('Mass of Fuel used per hour: %2.1f kg/hr',Mf);
