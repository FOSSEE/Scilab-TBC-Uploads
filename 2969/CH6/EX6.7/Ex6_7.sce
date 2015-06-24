clc
clear
//DATA GIVEN
C=29915;            //calorific value of coal in kJ/kg
Mw=9.1;             //mass of feed water per kg of dry coal in kg
Me=9.6;             //equivalent evaporation fraom and at 100 deg celsius per kg of dry coal in kg
Te=12;              //temp. of feed water to economiser in deg celsius
Tb=105;             //temp. of feed water to boiler in deg celsius
Ta=13;              //temp. of air
Tfg=370;            //temp. of flue gases entering economiser
Mfg=18.2;           //mass of flue gases entering economiser per kg of coal
Cp=1.046;           //mean specific heat of flue gases

hb=Me*2257;               //heat supplied for steam generation in kJ
ETAb=hb/C;                //boiler efficiency
hflue=Mfg*Cp*(Tfg-Ta);    //heat in the flue gase per kg of dry coal entering economiser
he=Mw*4.184*(Tb-Te);      //heat utilised in economiser
ETAe=he/hflue;            //economiser efficiency
htotal=hb+he;             //total heat absorbed in kg of water
ETA=htotal/C;             //boiler plant efficiency

printf(' (i) The Boiler efficiency is: %5.3f ',ETAb);
printf('or %2.1f percent. \n',ETAb*100);
printf(' (ii) The Economiser efficiency is: %5.3f ',ETAe);
printf('or %2.2f percent. \n',ETAe*100);
printf('(iii) The Overall Efficiency of boiler plant is: %5.3f ',ETA);
printf('or %2.1f percent. \n',ETA*100);    
