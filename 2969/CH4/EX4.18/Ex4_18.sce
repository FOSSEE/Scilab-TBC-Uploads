clc
clear
//DATA GIVEN
m=1;                           //mass of steam in kg
p=20;                          //pressure of steam in bar
Tsup=400+273;                  //temp. of steam in K
x=0.9;                         //dryness fraction
Cps=2.3;                       //specific heat of steam in kJ/kgK

//At 20 bar, from steam tables
Ts=212.4+273;                        //in K
hf=908.6;                            //kJ/kg
hfg=1888.6;                          //kJ/kg
vg=0.0995;                           //m^3/kg
hsup=hf+hfg+Cps*(Tsup-Ts);           //kJ/kg

//Assume superheated steam to behave as a perfect gas from the commencement of superheating and thus obey Charle's Law
//By vg/Ts=vsup/Tsup
vsup=vg*Tsup/Ts;
usup=hsup-p*10^5*vsup*10^-3;         //internal energy of 1 kg of superheated steam in kJ/kg

h=hf+x*hfg;
u=h-p*10^5*x*vg*10^-3;               //internal energy of 1 kg of wet steam in kJ/kg

printf('(i) The Internal energy of 1 kg of superheated steam at 400 deg celsius is: %4.2f kJ/kg. \n',usup);
printf('(ii) The Internal energy of 1 kg of wet steam with dryness fraction 0.9 is: %4.2f kJ/kg. \n',u);
