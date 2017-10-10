/////////Chapter 10 Properties Of Steam
///Example 10.21 Page No:201
/// Find Final  enthalpy of steam
//Input data
clc;
clear;
m=4;                        //Steam in Kg
P=13;                       //Absolute pressure in bar
tsup1=450;                  //Absolute temp in degree celsius 
deltaH=2.8*10^3;
Cps=2.3;           //loses in MJ
//from steam table at 13 bar
ts=191.6;                   //In degree celsius
Vg=0.1511;                  //In m^3/Kg
hf=814.7;                   //In m^3/Kg
hfg=1970.7;                 //In  KJ/Kg
hg=2785.4;                  //In KJ/Kg

///Calculation
h1=hg+Cps*(tsup1-ts);       //Initial enthalpy of steam in KJ/Kg
Deltah=deltaH/m;            //Change in enthalpy/unit mass in KJ/Kg
h2=h1-Deltah;               //Final enthalpy of steam in KJ/Kg
x2=(h2-hf)/hfg;             //wet & dryness fraction

//Output
printf('Initial enthalpy of steam=%f Kj/Kg \n ',h1);
printf('Change in enthalpy/unit mass=%f Kj/Kg \n ',Deltah);
printf('Final enthalpy of steam= %f KJ/Kg \n',h2);
printf('wet & dryness fraction=%f \n',x2);
