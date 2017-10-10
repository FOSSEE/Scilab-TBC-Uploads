/////////Chapter 10 Properties Of Steam
///Example 10.6 Page No:186
///Find Enthalpy of superheated steam
///Input data
clc;
clear;
IT=25;               //Initial temperature
m=5;                 //Heat required to generate steam in kg
pf=10;               //Final pressure in bar
tsup=250;            //Water temperature
///From steam table (temp basis)at 25 degree celsius 
//and at 10 bar(pressure basis)
hf=104.8;            //In KJ/KG
h1=104.8;            //In KJ/KG
ts=179.9;            //In degree celsius   
hf1=792.6;           //In KJ/KG
hfg=2013.6;          //In KJ/KG
hg=2776.2;           //In KJ/KG
Cps=2.1;

///Calculation
h=hg+Cps*(tsup-ts); //Enthalpy of superheated steam in KJ/Kg
H=m*(h-h1);         //Quantity of heat added in KJ/Kg

///Output
printf('Enthalpy of superheated steam=%f KJ/Kg \n ",h);
printf('Quantity of heat added= %f KJ/Kg \n ",H);
