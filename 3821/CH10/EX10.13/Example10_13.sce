/////////Chapter 10 Properties Of Steam
////Example 10.13 Page No:196
////Find Volume occupied by water
///Input data
clc;
clear;
V=0.04;                  //Volume of vessel in m^3 
x=1;
t=250+273;               //Saturated steam temp in degree celsius
mw=9;                    //Mass of liquid in Kg
//From steam table(temp basis,at t=250)
P=39.78*10^5;               //in bar
Vf=0.001251;             //In m^3/kg
Vg=0.05004;              //In m^3/Kg
hf=1085.7;               //KJ/Kg
hfg=2800.4;              //KJ/Kg
hg=1714.7;               //KJ/Kg

//Calculation
Vw=mw*Vf;                //Volume occupied by water in m^3
Vs=V-Vw;                 //Volume of waterin m^3
ms=Vs/Vg;                //Volume of dry and saturated steam in Kg 
m=mw+ms;                 //Total mass of steam in Kg
x=ms/(ms+mw);            //Dryness fraction of steam 
Vwet=(1-x)*Vf+x*Vg;      //Specific volume of steam in m^3/Kg
h=hf+x*hfg;              //Enthalpy of wet steam in KJ/Kg
EOWS=h*m;                //Enthalpy of 9.574 Kg of wet steam KJ
u=h-((P*Vwet)/10^3);    //Internal Energy in KJ/Kg
IEOS=u*m;                //Internal energy of 9.574 Kg of steam in KJ


///Output
printf('Volume occupied by water=%f m^3 \n ',Vw);
printf('Volume of water=%f m^3 \n ',Vs);
printf('Volume of dry and saturated steam=%f Kg \n',ms);
printf('Total mass of steam= %f Kg \n ',m);
printf('Dryness fraction of steam= %f  \n',x);
printf('Specific volume of steam=%f m^3/Kg \n ',Vwet);
printf('Enthalpy of wet steam=%f KJ/Kg \n ',h);
printf('Enthalpy of 9.574 Kg of wet steam=%f KJ \n ',EOWS);
printf('Internal Energy= %f KJ/Kg \n',u);
printf('Internal energy of 9.574 Kg of steam=%f KJ \n ',IEOS);
