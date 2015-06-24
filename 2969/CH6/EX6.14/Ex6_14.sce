clc
clear
//DATA GIVEN
Tfw=50;             //mean feed  water temp. in deg celsius
p=5;                //mean steam pressure in bar
x=0.95;             //dryness fraction of steam
Mc=600;             //coal consumption kg/hr
C=30400;            //calorific value of coal in kJ/kg
Ms=4800;            //feed water supplied to boiler in kg/hr

//from steam table, corresponding to 12 bar,
hf=640.1;           //in kJ/kg
hfg=2107.4;         //in kJ/kh
h=hf+x*hfg;         //in kj/kg
hf1=4.18*(Tfw-0);

Ma=Ms/Mc;           //in kg per kg of fuel
Me=Ma*(h-hf1)/2257; //(kg of steam)/(kg of fuel)

printf(' The Equivalent evaporation from and at 100 deg celsius, Me is: %5.3f (kg of steam)/(kg of coal).\n',Me);
