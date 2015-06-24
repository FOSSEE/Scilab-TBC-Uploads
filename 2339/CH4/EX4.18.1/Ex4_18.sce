clc
clear

//Now at 10 bar pressure
V=1.5;              //Volume in m^3
P=10;               //Pressure in bar
x=0.91;             //Dryness fraction
Vg=0.194;           //in m^3/kg
m=V/Vg;

Vf=x*Vg;
m_f=V/Vf;
printf('Amount of water to be placed in container: %2.2f kg',m);
printf('\n');
printf('Mass of water required: %2.2f kg',m_f);
printf('\n');
