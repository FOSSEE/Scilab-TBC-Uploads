///Chapter No 11 Steam Boilers
////Example 11.2 Page No 229
///Find Enthalpy of wet stream
///Input data
clc;
clear;
p=14;                            //Boiler pressure in bar
me=9;                            //Evaporates of water in Kg
Tw=35;                           //Feed water entering in degree celsius
x=0.9;                           //Steam stop value
CV=35000;                        //Calorific value  of the coal

///Calculation
//From Steam Table
hfw=146.56;                      //In KJ/Kg
hf=830.07;                       //In KJ/Kg
hfg=1957.7;                      //In KJ/Kg
hs=hf+x*hfg;                     //Enthalpy of wet stream in KJ/Kg
E=((me*(hs-hfw))/2257);          //Equivalent evaporation in Kg/Kg of coal
etaboiler=((me*(hs-hfw))/CV)*100;//Boiler efficiency in %

///Output
printf('Enthalpy of wet stream=%f KJ/Kg \n',hs);
printf('Equivalent evaporation=%f Kg/Kg of coal \n',E);
printf('Boiler efficiency=%f percent \n',etaboiler);
