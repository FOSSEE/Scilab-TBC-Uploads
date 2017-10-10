/////////Chapter 10 Properties Of Steam
///Example 10.26 Page No:207
//Find Constant volume process
clc;
clear;
//Input data
m=1.5;                          //Saturated steam in Kg
x1=1;                           
x2=0.6;  
P1=5*10^5;                     //Absolute  pressure in bar
//From steam table at pressure basis 5 bar
hg1=2747.5;                     //In KJ/Kg
Vg1=0.3747;                     //In m^3/Kg
V1=0.3747;                      //In m^3/Kg
V2=0.3747;                      //In m^3/Kg
//From steam table at Vg2 is 2.9 bar
P2=2.9*10^5;                   //Absolute pressure in bar 
t2=132.4;                       //In degree celsius 
hf2=556.5;                      //In KJ/Kg
hfg2=2166.6;                    //In KJ/Kg


    
//Calculation
Vg2=V2/x2;                       //Constant volume process in m^3/Kg
u1=hg1-((P1*Vg1)/1000);          //Initial internal energy in KJ/Kg
u2=(hf2+x2*hfg2)-((P2*V2)/1000); //Final internal energy in KJ
deltaU=(u1-u2)*m;                //Heat supplied in KJ

//Output
printf('Constant volume process=%f m^3/Kg \n ',Vg2);
printf('Initial internal energy=%f KJ/Kg \n ',u1);
printf('Final internal energy= %f KJ \n',u2);
printf('Heat supplied=%f KJ \n ',deltaU);
