clc
clear
//DATA GIVEN
m=1;                                 //mass of wet steam in kg
p=6;                                 //pressure of steam in bar
x=0.8;                               //dryness fraction

//At 6 bar, from steam tables
Ts=158.8+273;                        //in K
hfg=2085;                            //kJ/kg
swet=4.18*log(Ts/273)+x*hfg/Ts;      //entropy of wet steam in kJ/kgK

printf('The Entropy of wet steam is: %1.4f kJ/kgK.',swet);

//NOTE;
//the exact ans is 5.7794, while in TB it is given as 5.7865 kJ/kgK
