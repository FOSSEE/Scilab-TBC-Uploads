clc
clear
//DATA GIVEN
//BOILER
Mw=2060;            //mass of feed water 
Mc=227;             //mass of coal supplied in kg/hr
C=30000;            //calorific value of coal in kJ/kg
hs=2750;            //enthalpy of steam produced in kJ/kg
hfw=398;            //enthalpy of feed water
//ECONOMISER
Twin=15;            //temp. of feed water entering economiser in deg celsius
Twout=95;           //temp. of feed water leaving economiser in deg celsius
Tgout=18;           //atmospheric temp.
Tgin=370;           //temp. of entering flue gases
Mfg=4075;           //mass of flue gases
//assuming Cpw and Cpg,
Cpw=4.187;
Cpg=1.01;

ETAb=Mw*(hs-hfw)/(Mc*C);                             //efficiency of boiler
ETAe=Mw*Cpw*(Twout-Twin)/(Mfg*Cpg*(Tgin-Tgout));     //efficiency of economiser

printf(' (i) The Boiler efficiency is: %5.4f or %2.2f percent. \n',ETAb,(ETAb*100));
printf(' (ii) The Economiser efficiency is: %5.3f or %2.1f percent. \n',ETAe,(ETAe*100));

