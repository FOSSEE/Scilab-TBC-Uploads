/////////Chapter 10 Properties Of Steam
///Example 10.24 Page No:204
///Find Enthalpy of steam of first boiler
clc;
clear;
//Input data;
FB=15;                    //First boiler in bar
SB=15;                    //Second boiler in bar
tsup1=300;                //Temperature of the steam in degree celsius
tsup2=200;                //Temperature of the steam in degree celsius
//From steam table (pressure basis at 15 bar )
ts=198.3;                 //In degree celsius                
hf=844.7;                 //In KJ/Kg
hfg=1945.2;               //In KJ/Kg
hg=2789.9;                //In KJ/I
Cps=2.3;

//Calculation
h1=hg+Cps*(tsup1-ts);     //Enthalpy of steam of first boiler in KJ/Kg 
h3=hg+Cps*(tsup2-ts);     //Enthalpy of steam in steam main in KJ/Kg
h2=2*h3-h1;               //Energy balance in KJ/Kg
x2=(h2-hf)/hfg;           //Enthalpy of wet steam

//OUTPUT
printf('Enthalpy of steam of first boiler= %f KJ/Kg\n',h1);
printf('Enthalpy of steam in steam main=%f KJ/Kg \n ',h3);
printf('Energy balance=%f KJ/Kg \n ',h2);
printf('Enthalpy of wet steam= %f \n ',x2);
