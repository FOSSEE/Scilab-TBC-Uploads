clc
clear
//DATA GIVEN
//condition of steam before throttling
p1=8;                       //pressure in bar
//condition of steam after throttling
p2=1;                       //pressure in bar
T2=115+273;                 //temp. in deg. celsius
Tsup2=T2;
//At 1 bar,
Ts2=99.6+273;
Cps=2.1;                    //kJ/kgK

//As throttling is a constant enthalpy process,
//h1=h2.....hf1+x1*hgf1=hf2+hfg2+Cps(Tsup2-Ts2)

//At 8 bar, from steam tables,
hf1=720.9;
hfg1=2046.5;
//At 1 bar, from steam tables,
hf2=417.5;
hfg2=2257.9;

x1=[hf2+hfg2+Cps*(Tsup2-Ts2)-hf1]/hfg1;        //dryness fraction

printf('The Dryness fraction of steam in the main, x1 is: %1.2f.',x1);
