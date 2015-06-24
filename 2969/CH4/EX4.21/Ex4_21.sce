clc
clear
//DATA GIVEN
p1=10;                         //initial pressure of steam in bar
Tsup=250;                      //initial temperature of steam in deg celsius
p2=0.2;                        //final pressure of steam in bar
x2=0.9;                        //final dryness fraction of steam

//At 10 bar, from steam tables
hsup=3263.9;                   //kJ/kg
ssup=7.465;                    //kJ/kgK
h1=hsup;
s1=ssup;

//At 0.2 bar, from steam tables
hf2=251.5;                      //kJ/kh
hfg2=2358.4;                    //kJ/kg
sf2=0.8321;                     //kJ/kgK
sg2=7.9094;                     //kJ/kgK
h2=hf2+x2*hfg2;
sfg2=(sg2-sf2);
s2=sf2+x2*sfg2;

Dh=h1-h2;                      //drop in enthalpy
Ds=s1-s2;                      //change in entropy

printf(' (i) The Drop in enthalpy is: %3.1f kJ/kg. \n',Dh);
printf(' (ii) The change (DECREASE) in entropy is: %1.4f kJ/kgK.',Ds);
