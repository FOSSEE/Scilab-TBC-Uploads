clc
clear

BP=22;      //Brake Power
Eff=0.85;       //Mechanical Efficiency
IP=BP/Eff;
mf=6.5;
CV=30000;       //Calorific Value
Ebth=BP/((mf/3600)*CV);
printf('Brake Thermal Eff= %3.1f Percent',Ebth*100);
printf('\n');

Eith=IP/((mf/3600)*CV);
printf('Indicated Thermal Eff= %3.1f Percent',Eith*100);
printf('\n');

BSFC=mf/BP;
printf('BSFC= %3.1f kg/kWh',BSFC);
printf('\n');
