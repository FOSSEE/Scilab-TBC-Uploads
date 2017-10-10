///Chapter No 11 Steam Boilers
////Example 11.8 Page No 236
///Find Equivalent mass evaporation
//Input data
clc;
clear;
ms=6000;                           //Steam generated in Kg/h
mf=700;                            //Coal burnt in Kg/h
CV=31500;                          //Cv of coal in KJ/Kg
x=0.92;                            //Dryness in fraction of steam
P=12;                              //Boiler pressure in bar
Tsup=259;                          //Temperature of steam in degree celsius
Tw=45;                             //Hot well temperature in degree celsius

//Calculation
hfw=188.35;                        //In KJ/Kg
Ts=187.96;                         //In degree celsius
hf=798.43;                         //In KJ/Kg
hfg=1984.3;                        //In KJ/Kg
hg=2782.7;                         //In KJ/Kg
Cps=2.3;                           
me=ms/mf;                          //Equivalent mass evaporation
hs=hf+x*hfg;                       //Enthalpy of wet steam in KJ/Kg
E=((me*(hs-hfw))/2257);            //Equivalent evaporation in Kg/Kg of coal
hs1=(hg+Cps*(Tsup-Ts));           //Enthalpy of superheated steam in KJ/Kg
E1=((me*(hs1-hfw))/2257);          //Equivalent evaporation(with superheater) in Kg/Kg of coal
etaboiler=((me*(hs-hfw))/CV)*100;  //Boiler efficiency without superheater in %
etaboiler1=((me*(hs1-hfw))/CV)*100;//Boiler efficiency with superheater in %


//Output
printf('Equivalent mass evaporation=%f \n',me);
printf('Enthalpy of wet steam=%f KJ/Kg \n',hs);
printf('Equivalent evaporation=%f Kg/Kg of coal\n',E);
printf('Enthalpy of superheated steam=%f KJ/Kg \n',hs1);
printf('Equivalent evaporation(with superheater)=%f Kg/Kg of coal\n',E1);
printf('Boiler efficiency without superheater=%f percent \n',etaboiler);
printf('Boiler efficiency without superheater=%f percent \n',etaboiler1);
