/////////Chapter 10 Properties Of Steam
///Example 10.22 Page No:201
//Find Initial specific volume of steam 
//Input data
clc;
clear;
m=2;                           //Steam in Kg
x=0.7;                         //Initial dryness 
P=15;                          //Constant pressure in bar
//V2=2V1
//from steam table properties of
//saturated steam(pressure basis) at 15 bar
Ts=198.3+273;                  //In degree celsius 
Vg=0.1317;                     //In m^3/Kg
hf=844.7;                      //In KJ/Kg
hfg=1945.2;                    //In KJ/Kg
hg=2789.9;                     //In KJ/Kg
Cps=2.3;

///Calculation
V1=x*Vg;                       //Initial specific volume of steam in m**3/Kg
V2=2*V1;                       //Final specific volume of steam in m**3/Kg
Tsup=(V2/Vg)*Ts;               //Steam is superheated in degree celsius 
FSS=Tsup-Ts;                   //Degree of superheated in degree celsius
h1=hf+x*hfg;                   //Initial enthalpy of steam in KJ/Kg
h2=hg+Cps*(Tsup-Ts);           //Final enthalpy of steam in KJ/Kg 
Q=(h2-h1)*m;                   //Heat transferred in the process in KJ
W1=P*(m*V2-m*V1);              //Work transferred in the process in KJ

//Output
printf('Initial specific volume of steam=%f m^3/kg \n',V1);
printf('Final specific volume of steam= %f m^3/kg \n',V2);
printf('Steam is superheated= %f K \n ',Tsup);
printf('Degree of superheated=%f degree celsius \n ',FSS);
printf('Initial enthalpy of steam=%f KJ/Kg \n ',h1);
printf('Final enthalpy of steam=%f KJ/Kg \n ',h2);
printf('Heat transferred in the process=%f KJ \n ',Q);
printf('Work transferred in the process= %f KJ \n',W1);
