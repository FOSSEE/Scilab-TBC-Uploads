/////////Chapter 10 Properties Of Steam
///Example 10.29 Page No:210
///Find Entropy  of superheated steam 
//Input data
clc;
clear;
P1=15;                         //Initial steam in bar
tsup1=250+273;                 //Temperature of steam in degree celsius
P2=0.5;                        //Steam turbine in bar

//From steam table at 15 bar
ts1=198.3+273;                 //In degree celsius 
hg1=2789.9;                    //In KJ/Kg
sf1=2.3145;                    //In KJ/KgK
sfg1=4.1261;                   //In KJ/KgK
sg1=6.4406;                    //In KJ/KgK
//From steam table at 0.5 bar
ts2=81.53;                     //In degree celsius 
sf2=1.0912;                    //In KJ/Kg
sfg2=6.5035;                   //In KJ/Kg
sg2=7.5947;                    //In KJ/Kg
hf2=340.6;
Cps=2.3;
hfg2=2646;

//Calculation
S1=sg1+Cps*(log(tsup1/ts1)); //Entropy  of superheated steam in KJ/KgK
S2=S1                            //Entropy after isentropic processes in KJ/KgK
x2=(S2-sf2)/sfg2;                 //Enthalpy of wet steam 
h1=hg1+Cps*(tsup1-ts1);           //Enthalpy of steam at 15 bar
h2=hf2+x2*hfg2;                   //Enthalpy of wet steam at 0.5 bar
WOT=h1-h2;                        //Work output of the turbine

///OUTPUT
printf('Entropy  of superheated steam= %f KJ/KgK \n ',S1);
printf('Entropy after isentropic processes=%f KJ/KgK \n' ,S2);
printf('Enthalpy of wet steam= %f \n',x2);
printf('Enthalpy of steam= %f KJ/Kg',h1);
printf('Enthalpy of wet steam= %f KJ/Kg \n',h2);
printf('Work output of the turbine=%f KJ/Kg \n ',WOT);
