/////////Chapter 10 Properties Of Steam
///Example 10.25 Page No:205
// Find Initial specific volume of steam
clc;
clear;
///Input data
V=0.35;                     //Capacity of vessel in m^3
P1=10*10^2;                //Absolute pressure in bar
tsup1=250+273;              //Absolute temperature in degree celsius 
P2=2.5*102;                 //Absolute pressure in the vessel fall in bar

//From steam table (pressure basis at 10 bar)
ts1=179.9+273;              //In degree celsius 
Vg1=0.1943;                 //In m^3/Kg
hf1=762.6;                  //In KJ/Kg
hfg1=2013.6;                //In KJ/Kg
hg1=2776.2;                 //In KJ/Kg

//From steam table(pressure basis at 2.5 bar)
V2=0.2247;                  //In m^3/Kg
ts2=127.4;                  //In degree celsius
Vg2=0.7184;                 //In m^3/Kg
hf2=535.3;                  //In KJ/Kg
hfg2=2181.0;                //In KJ/Kg
hg2=2716.4;                 //In KJ/Kg
Cps=2.3;
///Calculation
V1=Vg1*(tsup1/ts1);         //Initial specific volume of steam in m^3/Kg
m=V/V1;                     //Initial mass of steam in Kg
x2=V2/Vg2;                  //Final condition of wet steam
h1=hg1+Cps*(tsup1-ts1);     //Initial enthalpy of steam in KJ/Kg
u1=h1-P1*V1;                //Initial internal energy of steam in KJ/Kg
h2=hf2+x2*hfg2;             //Final enthalpy of steam in KJ/Kg
u2=h2-P2*V2;                //Final internal energy of steam in KJ/Kg
deltaU=(u2-u1)*m;           //Change in internal energy in KJ

//Output
printf('Initial specific volume of steam=%f m^3/Kg \n ',V1);
printf('Initial mass of steam=%fKg \n ',m);
printf('Final condition of wet steam= %f \n ',x2);
printf('Initial enthalpy of steam=%f KJ/Kg \n ',h1);
printf('Initial internal energy of steam= %f KJ/Kg \n',u1);
printf('Final enthalpy of steam=%f KJ/Kg \n ',h2);
printf('Final internal energy of steam=%f KJ/Kg \n',u2);
printf('Change in internal energy= %f KJ/Kg \n',deltaU);
