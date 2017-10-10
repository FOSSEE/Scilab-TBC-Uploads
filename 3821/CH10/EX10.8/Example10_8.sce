/////////Chapter 10 Properties Of Steam
///Example 10.8 Page No:188
////Find Mass of steam
///Input data
clc;
clear;
P=25;           //Absolute pressure
ts=223.9;       //Volume
//Frome steam table (pressure basis at 25 bar) 
vf=0.001197;    //In m^3/Kg  
vg=0.0799;      //In m^3/Kg 
v=8;            //In m^3/Kg 


///Calculation
m=v/vg;         //Mass of steam in Kg   

///Output
printf('Mass of steam=%f Kg \n ',m);
