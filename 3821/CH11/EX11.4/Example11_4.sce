///Chapter No 11 Steam Boilers
////Example 11.4 Page No 231
///Find Enthalpy of superheated steam
//Input data
clc;
clear;
mf=500;                          //Boiler plant consumes of coal in Kg/h
CV=32000;                        //Calorific value in Kj/Kg
ms=3200;                         //plant generates in Kg/h
P=1.2;                           //Absolute pressure MN/m^2
MN=12;                           
Tsup=300;                        //Absolute temperature in degree celsius
Tw=35;                           //Feed water temperature
Cps=2.3;

//Calculation
hfw=146.56;                      //In KJ/Kg
Ts=187.96;                       //In Degree celsius
hf=798.43;                       //In KJ/Kg
hfg=1984.3;                      //In KJ/Kg
hg=2782.7;                       //In KJ/Kg
hs=hg+Cps*(Tsup-Ts);             //Enthalpy of superheated steam in KJ/Kg
me=ms/mf;                        //mass of evaporation 
E=((me*(hs-hfw))/2257);          //Equivalent evaporation in Kg/Kg ofcoal
etaboiler=((me*(hs-hfw))/CV)*100; //Boiler efficiency in %
  

///Output
printf('Enthalpy of superheated steam= %f KJ/Kg\n',hs);
printf('mass of evaporation=%f \n',me);
printf('Equivalent evaporation=%f Kg/Kg of coal \n',E);
printf('Boiler efficiency %f percent \n ',etaboiler);
    
