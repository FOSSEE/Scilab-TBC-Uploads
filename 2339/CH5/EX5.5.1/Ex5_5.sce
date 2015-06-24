clc
clear

Ma=10000;           //in kg/hr
P=7;                //in bar

Tfw=40;             //in C
Hfw=167.6;          //in kJ/kg
H=2763.5;           //in kJ/kg

Q=Ma*(H-Hfw)/60;            //Heat per minute
SA=Q/2720;                  //Heating surface area required
printf('Heating surface area required: %3.1f m^2',SA);
printf('\n');

GA=SA/25;
printf('Grate area required: %3.1f m^2',GA);
printf('\n');
