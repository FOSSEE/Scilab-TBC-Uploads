///Chapter No 11 Steam Boilers
////Example 11.5 Page No 232
//Find Enthalpy of wet stream
//Input data
clc;
clear;
ms=5000;                           //Steam generted in Kg/h
mf=700;                            //Coal burnt in Kg/h 
CV=31402;                          //Cv of coal in KJ/Kg
x=0.92;                            //quality of steam
P=1.2;                             //Boiler pressure in MPa
Tw=45;                             //Feed water temperature in degree celsius


//Calculation
hfw=188.35;                        //In KJ/Kg
hf=798.43;                         //In KJ/Kg
hfg=1984.3;                        //In KJ/Kg
hs=hf+x*hfg;                       //Enthalpy of wet stream in KJ/Kg
me=ms/mf;                          //mass of evaporation 
E=((me*(hs-hfw))/2257);            //Equivalent evaporation in Kg/Kg of coal
etaboiler=((me*(hs-hfw))/CV)*100;  //Boiler efficiency in %



//Output
printf('Enthalpy of wet stream= %f KJ/Kg \n',hs);
printf('mass of evaporation=%f \n',me);
printf('Equivalent evaporation=%f Kg/Kg of coal \n',E);
printf('Boiler efficiency=%f percent \n',etaboiler);
