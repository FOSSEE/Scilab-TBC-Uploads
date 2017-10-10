/////////Chapter 10 Properties Of Steam
////Example 10.20 Page No:200
/// Find Initial enthalpy of steam
//Input data
clc;
clear;
P=10*10^2;                //Absolute pressure in bar
x1=0.9;                    //Dryness enters
tsup2=300+273;             //Temperature in degree celsius 
//From steam table at 10 bar
ts=179.9+273;              //In degree celsius
Vg=0.1943;                 //In m^3/Kg
hf=762.6;                  //In KJ/Kg
hfg=2013.6;                //InK/Kg
hg=2776.2;                 //In KJ/Kg
Cps=2.3;

//Calculation
h1=hf+x1*hfg;              //Initial enthalpy of steam in KJ/Kg
V1=x1*Vg;                  //Initial specific volume of steam
u1=h1-P*V1;                //Initial internal energy of steam in KJ/Kg
h2=hg+Cps*(tsup2-ts);      //Final enthalpy of steam in KJ/Kg
V2=Vg*(tsup2/ts);          //Final specific volume of steam in m**3/Kg
u2=h2-P*V2;                //Final internal energy of steam in KJ/K
deltah=h2-h1;              //Heat gained by steam in KJ/Kg
deltaU=(u2-u1);            //Change in internal energy in KJ/Kg

//Output
printf('Initial enthalpy of steam=%f KJ/Kg \n',h1);
printf('Initial specific volume of steam=%f \n ',V1);
printf('Initial internal energy of steam=%f KJ/Kg \n',u1);
printf('Final enthalpy of steam= %f KJ/Kg \n ',h2);
printf('Final specific volume of steam= %f m^3/kg \n',V2);
printf('Final internal energy of steam=%f Kj/Kg \n ',u2);
printf('Heat gained by steam= %f KJ/Kg \n ',deltah);
printf('Change in internal energy=%f KJ/Kg \n ',deltaU);
