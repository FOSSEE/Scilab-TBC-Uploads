clc
clear
//DATA GIVEN
Ms=5000;                //mass of steam generated in kg/hr
Mf=700;                 //rate of coal firing in kg/hr
C=31402;                //higher calorific value(HCV) of coal in kJ/kg
x=0.92;                 //quality of steam
p=12;                   //steam pressure in bar
Tfw=45;                 //feed  water temp. in deg celsius

//from steam table, corresponding to 12 bar,
hf=798.4;               //in kJ/kg
hfg=1984.3;             //in kJ/kg
h=hf+x*hfg;             //in kJ/kg
hf1=4.18*(Tfw-0);       //heat of feed water in kJ/kg
Ma=Ms/Mf;               //in kg per kg of fuel
Me=Ma*(h-hf1)/2257;     //(kg of steam)/(kg of fuel)
eta=Ma*(h-hf1)/C;       //thermal efficiency

printf(' (i) The Equivalent evaporation, Me is: %5.3f (kg of steam)/(kg of coal). \n',Me);
printf(' (ii) The Boiler efficiency is: %5.3f or %2.1f percent. \n',eta,eta*100);
