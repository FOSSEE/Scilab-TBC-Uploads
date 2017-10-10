///Chapter No 11 Steam Boilers
////Example 11.9 Page No 237
///Find Mass of steam consumption
///Input data
clc;
clear;
P=15;                             //Boiler produces steam in bar
Tsup=250;                         //Boiler temperature in degree celsius 
Tw=35;                            //Feed water in degree celsius
MWh=1.5;                          //steam supplied to the turbine
CV=32000;                         //Coal of calorific value in KJ/Kg
etaboiler=80/100;                 //Thermal efficiency in %
fr=210;                           //Firing rate in Kg/m^2/h
//From steam table(temp basis at 35 degree celsius)
hfw=146.56;                       //In KJ/Kg
Ts=198.29;                        //In degree celsius
hfg=1945.2;                       //In KJ/Kg
hg=2789.9;                        //In KJ/Kg
Cps=2.3; 


//calculator
hs=hg+Cps*(Tsup-Ts);               //Enthalpy of superheated steam(with superheater) in KJ/Kg
ms=9000/MWh;                       //Steam rate in Kg/MWh
mf=((ms*(hs-hfw))/(etaboiler*CV)); //Mass of steam consumption in Kg/h
GA=mf/fr;                          //Grate rate in m^2



//Output
printf('Enthalpy of superheated steam(with superheater)=%f KJ/Kg \n',hs);
printf('Steam rate= %f Kg/h \n',ms);
printf('Mass of steam consumption=%f Kg/h \n',mf);
printf('Grate rate=%f m^2 \n',GA);
