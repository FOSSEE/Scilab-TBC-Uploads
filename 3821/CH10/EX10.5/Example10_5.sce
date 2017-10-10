/////////Chapter 10 Properties Of Steam
///Example 7.5 Page No:186
///Find  Final Enthalpy of the steam
//Input data
clc;
clear;
ti=30;         //Temperature in degree celsius
m=2;           //Water in Kg
pf=8;          //Steam at 8 bar
x=0.9;         //Water to dry 
tb=30;
///From steam table at 30 degree celsius
hf=125.7;
///h1=hf initial enthalpy of water
///From steam table at 8 bar
ts=170.4;      //In degree celsius    
hf1=720.9;     //In KJ/KG
hfg=2046.6;    //In KJ/KG
hg=2767.5;     //In KJ/KG

///Calculation
h=hf1+(x*hfg); //Final Enthalpy of the steam in KJ/Kg
Qha=m*(h-hf);  //Quantity of the heat in KJ/Kg              ///Calculation mistake m is not multiplied by (h-hf) in book

///Output
printf('Final Enthalpy of the steam=%f KJ/Kg \n ',h);
printf('Quantity of the heat=%f KJ/Kg \n',Qha);
