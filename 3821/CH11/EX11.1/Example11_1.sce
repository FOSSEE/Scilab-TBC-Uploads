///Chapter No 11 Steam Boilers
////Example 11.1 Page No 228
///Find Mass of evaporation
//Input data
clc;
clear;
ms=5000;                 //Boiler produces wet steam in Kg/h
x=0.95;                  //Dryness function
P=10;                    //Operating pressure in bar
mf=5500;                 //Bour in the furnace in Kg
Tw=40;                   //Feed water temp in degree celsius

//Calculation
//from steam table
hfw=167.45;              //In KJ/Kg
hf=762.61;               //In KJ/Kg
hfg=2031.6;              //In KJ/Kg
hs=(hf+x*hfg);           //Enthalpy of wet stream in KJ/Kg
me=ms/mf;                //Mass of evaporation
E=((me*(hs-hfw))/(2257))*10; //Equivalent evaporation in Kg/Kg of coal

//Output
printf('Enthalpy of wet stream=%f KJ/Kg \n',hs);
printf('Mass of evaporation=%f KJ/Kg \n',me);
printf('Equivalent evaporation = %f Kg/Kg of coal \n',E);
