///Chapter No 11 Steam Boilers
////Example 11.3 Page No 230
///Find mass of evaporation 
//Input data
clc;
clear;
ms=2500;                          //Saturated steam per bour in Kg
x=1;         
P=15;                             //Boiler pressure in bar
Tw=25;                            //Feed water entering in degree celsius 
mf=350;                           //Coal burnt in Kg/bour
CV=32000;                         //Calorific value in Kj/Kg 

//Calculation
//steam table
hfw=104.77;                       //In KJ/Kg
hf=844.66;                        //In KJ/Kg
hfg=1945.2;                       //In KJ/Kg
hg=2789.9;                        //In KJ/Kg
hs=2789.9;                        //Enthalpy of dry steam in KJ/Kg
me=ms/mf;                         //mass of evaporation 
E=((me*(hs-hfw))/2257);           //Equivalent evaporation in Kg/Kg ofcoal
etaboiler=((me*(hs-hfw))/CV)*100; //Boiler efficiency in %

//Output
printf('mass of evaporation= %f \n',me);
printf('Equivalent evaporation= %f Kg/Kg of coal\n',E);
printf('Boiler efficiency= %f percent \n',etaboiler);
