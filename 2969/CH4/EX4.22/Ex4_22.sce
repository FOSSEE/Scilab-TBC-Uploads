clc
clear
//DATA GIVEN
m=1;                           //mass of steam in kg
p=12;                          //pressure of steam in bar
Tsup=250+273;                  //temp. of steam in K
Cps=2.1;                       //specific heat of steam in kJ/kg

//At 12 bar, from steam tables
Ts=188+273;                          //in K
hfg=1984.3;                          //kJ/kg
ssup=4.18*log(Ts/273)+hfg/Ts+Cps*log(Tsup/Ts);       //entropy of wet steam in kJ/kgK

printf(' The Entropy of 1 kg of superheated steam at 12 bar and 250 deg celsius is: %1.3f kJ/kg. \n',ssup);
