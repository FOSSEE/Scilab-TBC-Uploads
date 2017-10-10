/////////Chapter 10 Properties Of Steam
///Example 10.27 Page No:208
//Find Enthalpy of steam
clc;
clear;
//Input data
P1=20;            //Initial steam in bar
x1=0.95;          //dryness throttled
P2=1.2;           //Absolute pressure in bar

//From steam table (pressure basis at 20 bar)
ts=212.4;         //In degree celsius
hf=908.6;         //In KJ/Kg
hfg=1888.6;       //In KJ/Kg
hg=2797.2;        //In KJ/Kg
//From steam table (pressure basis at 1.2 bar)
//h2=h1;            //In KJ/Kg
ts2=104.8;        //In degree celsius
hf2=439.3;        //In KJ/Kg
hfg2=2244.1;      //In KJ/Kg
hg2=2683.4;       //In KJ/Kg
Cps=2.3;


//Calculation
h1=hf+x1*hfg;     //Enthalpy of steam in KJ/Kg
tsup2=((h1-hg2)/Cps)+ts2; //Enthalpy of wet steam in degree celsius
DOS=tsup2-ts2;    //Degree of superheat in degree celsius


//Output
printf('Enthalpy of steam=%f KJ/Kg \n ',h1);
printf('Enthalpy of wet steam=%f degree celsius \n ',tsup2);
printf('Degree of superheat=%f degree celsius \n',DOS);
