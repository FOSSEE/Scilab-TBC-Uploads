//////Chapter 10 Properties Of Steam
////Example 10.4 Page No:185
///
////#Input data
clc;
clear;
P=15;              //Absolute pressure in bar
//From steam table (pressure basis at 15 bar)
ts=198.3;          //In degree celsius  
hf=844.7;          //In KJ/Kg
hfg=1945.2;        //In KJ/Kg
hg=2789.9;         //In KJ/Kg
tsup=300;          //In degree celsius 
x=0.8;
Cps=2.3;
hg=2789.9;

//Calculation
h1=hf+x*hfg;        //Enthalpy of wet steam in KJ/KG
h=hg;               //Enthalpy of dry and saturated steam in KJ/KG
h2=hg+Cps*(tsup-ts); //Enthalpy of superheated steam in KJ/KG


//Output
printf('Enthalpy of wet steam=%f KJ/Kg \n ",h1);
printf('Enthalpy of dry and saturated steam=%f KJ/Kg \n ',h);
printf('Enthalpy of superheated steam= %f KJ/Kg \n ',h2);
