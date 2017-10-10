///Chapter No 11 Steam Boilers
////Example 11.7 Page No 234
///Find Boiler efficiency 
///Input data
clc;
clear;
E=12;                        //Boiler found steam in Kg/Kg
CV=35000;                    //Calorific value in KJ/Kg
ms=15000;                    //Boiler produces in Kg/h
P=20;                        //Boiler pressure in bar
Tw=40;                       //Feed water in degree celsius
mf=1800;                     //Fuel consumption


//Calculation
//R=me(hs-hfw)
hfw=167.45;                  //In KJ/Kg
hg=2797.2;                   //In KJ/Kg
Ts=211.37;                   //In degree celsius
Cps=2.3;
R=E*2257;                    //Equivalent evaporation in KJ/Kg of coal
etaboiler=(R/CV)*100;        //Boiler efficiency in %
me=ms/mf;                    //Equivalent mass evaporation in KJ/Kg of coal                   
hs=(R/me)+hfw;               //In KJ/Kg
Tsup=((hs-hg)/Cps)+Ts;       //Enthalpy of superheated steam in degree celsius



//Output
printf('Equivalent evaporation=%f KJ/Kg of coal \n',R);
printf('Boiler efficiency=%f percent \n',etaboiler);
printf('Equivalent mass evaporation= %f KJ/Kg of coal \n',me);
printf('hs=%f KJ/Kg \n',hs);
printf('Enthalpy of superheated steam=%f degree celsius \n',Tsup);
