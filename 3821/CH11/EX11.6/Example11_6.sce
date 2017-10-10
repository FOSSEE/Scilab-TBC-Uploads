///Chapter No 11 Steam Boilers
////Example 11.6 Page No 233
///Enthalpy of superheated steam
//Input data
clc;
clear;
ms=6000;                   //Boiler produce of steam Kg/h
P=25;                      //Boiler pressure in bar
Tsup=350;                  //Boiler temperature in degree celsius
Tw=40;                     //Feed water temperature indegree celsius
CV=42000;                  //Calorific value in Kj/Kg
etaboiler=75/100;          //Expected thermal efficiency in %


//Calculation
hfw=167.45;                //In KJ/Kg
Ts=223.94;                 //In degree celsius  
hf=961.96;                 //In KJ/Kg
hfg=1839.0;                //In KJ/Kg
hg=2800.9;                 //In KJ/Kg
Cps=2.3;
hs=((hg)+(Cps)*(Tsup-Ts));         //Enthalpy of superheated steam KJ/Kg
mf=((ms*(hs-hfw))/(CV*etaboiler)); //Boiler efficiency in %
me=ms/mf;                          //Equivalent mass of evaporation
E=((me*(hs-hfw))/2257);            //Equivalent evaporation in Kg/Kg of oil


//Output
printf('Enthalpy of superheated steam=%f KJ/Kg \n',hs);
printf('Boiler efficiency=%f percent \n',mf);
printf('Equivalent mass of evaporation=%f \n',me);
printf('Equivalent evaporation=%fKg/Kg of oil \n' ,E);
