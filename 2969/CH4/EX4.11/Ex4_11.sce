clc
clear
//DATA GIVEN
p=8;                           //pressure of steam in bar
x=0.8;                         //dryness fraction

//At 8 bar, from steam tables
vg=0.240;                      //m^3/kg
hfg=2046.5;                    //kJ/kg

We=p*10^5*x*vg/1000;           //external work done during evaporation in kJ
LHi=x*hfg-We;                  //Internal latent heat in kJ

printf(' (i) The External work done during evaporation is: %3.1f kJ. \n',We);
printf(' (ii) The Internal latent heat is: %4.1f kJ. \n',LHi);
