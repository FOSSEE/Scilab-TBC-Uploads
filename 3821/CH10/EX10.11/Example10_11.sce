/////////Chapter 10 Properties Of Steam
//////Example 10.11 Page No:193
/////Find Entropy of wet steam
///Input data
clc;
clear;
P=15;                         //Absolute pressure
//From steam table (pressure basis at 15 bar)
ts=198.3+273;                 //In degree celsius   
Sf=2.3145;                    //In KJ/KgK
Sfg=4.1261;                   //In KJ/KgK
Sg=6.4406;                    //In KJ/KgK
tsup=300+273;
Cps=2.3;
x=0.8;

////calculation
S=Sf+x*Sfg;                    //Entropy of wet steam in KJ/Kg
S1=Sg;                         //Entropy of superheated steam in KJ/Kg
S2=Sg+Cps*(log(tsup/ts)); //Entropy of superheated steam in  KJ/Kg

///Output
printf('Entropy of wet steam %f KJ/Kg \n' ,S);
printf('Entropy of dry and saturated steam %f KJ/Kg \n ' ,S1);
printf('Entropy of superheated steam %f KJ/Kg \n' ,S2);
