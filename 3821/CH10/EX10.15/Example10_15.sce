/////////Chapter 10 Properties Of Steam
///Example 15 Page No:197
///Find Enthalpy of wet steam
///Input data
clc;
clear;
P=15;          ///Absolute pressure in bar
///From steam table (pressure basis at 15 bar)
h=1950;       //In KJ/Kg
ts=198.3;     //In degreee celsius
hf=844.7;     //In KJ/Kg
hfg=1945.2;   //In KJ/Kg
hg=2789.9;    //In KJ/Kg

///Calculation
x=((h-hf)/hfg);  ///Enthalpy of wet steam

///Output
printf('Enthalpy of wet steam=%f \n ',x);

