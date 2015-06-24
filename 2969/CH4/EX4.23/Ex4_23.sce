clc
clear
//DATA GIVEN
p=5;                           //pressure of steam in bar
Mwt=50;                        //mass of water in the tank in kg
t1=20;                         //initial temp. in deg. celsius
Ms=3;                          //amount of steam condensed in kg
t2=40;                         //final temp. in deg. celsius
We=1.5;                        //water equivalent of tank in kg

//At 5 bar, from steam tables
hf=640.1;                      //in kJ/kg
hfg=2107.4;                    //in kJ/kg

Mw=Mwt+We;                     //total mass of water in kg
//heat lost by steam = heat gained by water
//Ms[(hf+xhfg)-1*4.18*(t2-0)]=Mw[1*4.18*(t2-t1)]
x=[Mw*[1*4.18*(t2-t1)]/Ms+1*4.18*(t2-0)-hf]/hfg;         //dryness fraction

printf('The Dryness fraction of steam, x is: %1.4f.',x);
