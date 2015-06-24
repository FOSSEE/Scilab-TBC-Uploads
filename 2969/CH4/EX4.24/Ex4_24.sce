clc
clear
//DATA GIVEN
p=1.1;                         //pressure of steam in bar
x=0.95;                        //dryness fraction
Mwt=90;                        //mass of water in the tank in kg
t1=25;                         //initial temp. in deg. celsius
Mt=12.5;                       //mass of tank in kg
c=0.42;                        //specific heat of metal in kJ/kgK
t2=40;                         //final temp. in deg. celsius

m1=Mwt;
m2=Mt*c;                       //water equivalent of vessel
M=m1+m2;                       //total mass of water in kg
//At 1.1 bar, from steam tables
hf=428.8;                      //in kJ/kg
hfg=2250.8;                    //in kJ/kg
//heat lost by steam = heat gained by water
//Ms[(hf+xhfg)-1*4.18*(t2-0)]=M[1*4.18*(t2-t1)]
Ms=M*[1*4.18*(t2-t1)]/[(hf+x*hfg)-1*4.18*(t2-0)];      //mass of steam condensed in kg

printf(' The Mass of steam condensed, Ms is: %1.3f kg.',Ms);
