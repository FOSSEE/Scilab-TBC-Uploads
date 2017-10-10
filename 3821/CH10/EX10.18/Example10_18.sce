////////Chapter 10 Properties Of Steam
////Example 10.18 Page No:198
///Find Temp of superheated steam
///Input data
clc;
clear;
P=7;                             //Absolute pressure in bar
v=0.3;                           //Specific volume in m^3/Kg
//From steam table (pressure basis at 7 bar)
ts=165+273;                      //In degree celsius
vf=0.001108;                     //In m^3/Kg
vg=0.2727;                       //In m^3/Kg

///Calculation
//v=vg*tsup/ts;
tsup=((v/vg)*ts)-273;            //Temp of superheated steam  in degree celsius
DOS=tsup+273-ts;                 //Degree of superheated  in degree celsius

//Output
printf('Temp of superheated steam=%f degree celsius \n ',tsup);
printf('Degree of superheated=%fdegree celsius \n  ',DOS);
