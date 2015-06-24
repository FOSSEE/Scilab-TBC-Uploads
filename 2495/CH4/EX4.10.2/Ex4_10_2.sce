clear
clc
Pt=747.3;//toatal pressure in torr
PB=638.6;//vapour pressure of water
PA=Pt-PB;//vapour pressure of liquid
WA=1.27;//in gm
WB=1;//in gm
MB=18;//molar mass of water in gm/mol
MA=(WA/WB)*((PB*MB)/PA);//molar mass of liquid in gm/mol
printf('MA=%.1f gm/mol',MA)

//page 192
