clc
clear
//DATA GIVEN
p=13;                       //steam pressure in bar
ds=77;                      //degree of superheat in deg. celsius
Tfw=85;                     //temp. of feed water in deg. celsius
Mw=3000;                    //mass of water evaporated in kg/hr
Mc=410;                     //coal fired
Mash=40;                    //mass of ash in kg/hr
Pca=9.6;                    //% of combustible in ash
Pm=4.5;                     //% of moisture in coal
C=30500;                    //calorific vaalue of dry coal per kg
Cps=2.1;                    //specific heat of superheated steam in kJ/kgK


//from steam table, corresponding to 13 bar,
hf=814.7;                   //in kJ/kg
hfg=1970.7;                 //in kJ/kg
Ts=191.6;                   //in deg. selsius
h=hf+hfg+Cps*(ds);
hf1=4.18*(Tfw-0);
htotal=h-hf1;               //total heat supplied to produce 1 kg of steam

Mc1=Mc*(1-Pm/100);          //mass of dry coal in kg
Ma=Mw/Mc1;
ETAb=Ma*(h-hf1)/C;          //efficiency of boiler plant including superheater

Mcom=Mash*Pca/100;          //Mass of combustible in ash per hr
//the combustible present in ash is practically carbon and its value may be taken as 338/60 kJ/kg
//heat actually supplied pr hr=heat of dry coal-heat of combustible in ash
Hsupp=Mc1*C-Mcom*33860;     //heat actually supplied pr hr
Huse=Mw*(h-hf1);            //heat usefully utilised in boiler pr hr

ETAc=Huse/Hsupp;            //efficiency of boiler and furnace combined

printf(' (i) The Efficiency of boiler plant including superheater is: %5.3f or %2.1f percent. \n',ETAb,(ETAb*100));
printf(' (ii) The Efficiency of the boiler and furnace combined is: %5.3f or %2.1f percent. \n',ETAc,(ETAc*100));
