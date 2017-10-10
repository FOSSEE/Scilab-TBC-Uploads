// Exa 2.3 
//TO find Offered Load.

clc;
clear all;

B=0.05;  //Blocking(5%)
CL=3000;  //Carried Load in CCS

//Solution
//Offered Load=Carried Load/(1-Blocking);
OL=CL/(1-B);  //Offered Load in CCS
printf('Offered load is %d CCS \n',round(OL));
printf(' Overflow is %d CCS \n',round(OL)-CL);
