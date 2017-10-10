///Chapter 10 Properties Of Steam
///Example 10.17 Page No:198
///Find Volume of steam dryness fraction
//Input data
clc;
clear;
P=7;                  //Absolute pressure in bar
v=0.2;                //Specific volume in m^3/Kg
//from steam table (pressure basis at 7 bar) 
ts=165;               //In degree celsius
vf=0.001108;          //In m^3/Kg
vg=0.2727;            //In m^3/Kg

//Calculation
x=v/vg;               //Volume of steam dryness fraction

//Output
printf('Volume of steam dryness fraction= %f \n',x);
