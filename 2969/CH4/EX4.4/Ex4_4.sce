clc
clear
//DATA GIVEN
Mw=2;                          //mass of water to be converted to steam in kg
Tw=25;                         //temp. of water in deg celsius
p=5;                           //pressure
x=0.9;                         //dryness fraction

//At 5 bar, from steam tables
hf=640.1;                      //kJ/kg
hfg=2107.4;                    //kJ/kg

h=hf+x*hfg;                    //specific enthalpy (above 0 deg celsius)
hs=1*4.18*(Tw-0);              //sensible heat associated with i kg of water
hnet=h-hs;                     //net quantity of heat to be supplied per kg of water
Htotal=Mw*hnet;                //total amount of heat to be supplied

printf('The Total amount of heat to be supplied is: %4.2f kJ.',Htotal);
