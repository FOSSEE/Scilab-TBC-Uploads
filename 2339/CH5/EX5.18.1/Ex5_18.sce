clc
clear

Me=10;      //kg/kg
CV=34000        //kJ/kg

x=Me*2257;

Eff=100*x/CV;
printf('Efficiency of Boiler: %3.2f Percent',Eff);
printf('\n');
