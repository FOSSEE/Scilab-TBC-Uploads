clc
clear
//DATA GIVEN
p=20;                        //pressure in the boilers and main is 20 bar
Tbs=350;                     //temperature of steam in boiler with superheater in deg. celsius
Tm=250;                      //temperature of steam in the main in deg. celsius
Cps=2.25;                    //specific heat of steam in kJ/kg

//At 20 bar, from steam tables
Ts=212.4;                            //deg. celsius
hf=908.6;                            //kJ/kg
hg=2797.2;                           //kJ/kg
hfg=1888.6;                          //kJ/kg

//Boiler B1-20 bar, 350 deg. celsius
h1=hg+Cps*(Tbs-Ts);

//Main-20 bar, 250deg celsius
hm=2*[hg+Cps*(Tm-Ts)];               //total heat of 2 kg of steam in the steam main

//Boiler B2-20 bar,
//h2=hf+x2*hfg
//h2=hm-h1
x2=((hm-h1)-hf)/hfg;

printf('The Quality of steam in the Boiler without superheater is: %1.3f. \n',x2);
