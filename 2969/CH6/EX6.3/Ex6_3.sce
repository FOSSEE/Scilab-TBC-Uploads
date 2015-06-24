clc
clear
//DATA GIVEN
Mc=1250;                   //quantity of coal in kg consumed in 24 hours
Mw=13000;                  //mass of water evaporated in kg
MEPs=7;                    //mean effective pressure of steam in bar
Tfw=40;                    //feed water temp. in deg celsius
h=2570.7;                  //enthalpy of steam at 7 bar in kJ/kg
C=30000;                   //calorific value of coal in kJ/kg

Ma=Mw/Mc;                  //mass of water actually evaporated per kg of fuel
hf1=4.18*(Tfw-0);
hfg=2257;                  //in kJ/kg
Me=Ma*(h-hf1)/hfg;         //in kg
eta=Ma*(h-hf1)/C;          //boiler efficiency

printf(' (i)  The equivalent evaporation per kg of coal, Me is: %5.3f kg. \n',Me);
printf(' (ii)  The efficiency of boiler, eta is: %1.3f or %2.1f percent. ',eta,eta*100);
