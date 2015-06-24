clc
clear
//DATA GIVEN
m=4.4;                         //mass of steam to be produced in kg
p=6;                           //pressure of steam
Tsup=250;                      //temp. of steam in deg. celsius
Tw=30;                         //temp. of water in deg celsius
Cps=2.2;                       //specific heat of steam in kJ/kg

//At 6 bar, from steam tables
Ts=158.8;                      //deg. celsius
hf=670.4;                      //kJ/kg
hfg=2085;                      //kJ/kg
//since the given temp. 250 deg celsius is greater than 158.8 deg celsius, steam is superheated

hsup=hf+hfg+Cps*(Tsup-Ts);     //enthalpy of 1 kg supergeated steam reckoned from 0 deg. celsius
hs=1*4.18*(Tw-0);              //sensible heat associated with i kg of water
hnet=hsup-hs;                  //net quantity of heat to be supplied per kg of water
Htotal=m*hnet;                 //total amount of heat to be supplied

printf('The Total amount of heat to be supplied is: %4.1f kJ.',Htotal);
