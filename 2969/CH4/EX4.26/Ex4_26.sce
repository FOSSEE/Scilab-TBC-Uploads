clc
clear
//DATA GIVEN
Mw=2;                           //mass of water separated out in kg
Ms=20.5;                        //amount of steam (condensate) discharged from throttling calorimeter in kg
Tsup3=110+273;                  //temp. of steam afetr throttling in K
p1=12;                          //initial pressure of steam in bar
p3=(760+5)/1000*1.3366;         //final pressure of steam in bar  (1 mm of Hg=1.3366 bar)
Cps=2.1;                        //kJ/kgK

p2=p1;
//At p1=p2=12 bar, from steam tables
hf2=798.4;                      //in kJ/kg
hfg2=1984.3;                    //in kJ/kg

//At p3=1 bar, from steam tables
Ts3=99.6+273;                   //in K
Tsup3=110+273;                  //in K
hf3=417.5;                      //in kJ/kg
hfg3=2257.9;                    //in kJ/kg

//h2=h3.....hf2+x2*hgf2=hf3+hfg3+Cps(Tsup3-Ts3)
x2=[hf3+hfg3+Cps*(Tsup3-Ts3)-hf2]/hfg2;        //dryness fraction x2

x1=(x2*Ms)/(Mw+Ms);                            //dryness fraction of steam supplied, x1

printf('The Quality of steam supplied, x1 is: %1.2f.',x1);
