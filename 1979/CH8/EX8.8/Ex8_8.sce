//chapter-8 page 342 example 8.8
//==============================================================================
clc;
clear;

//For a circular magnetron
a=0.15;//inner radius in m
b=0.45;//outer radius in m
B=1.2*10^(-3);//magnetic flux density in Wb/sqm
x=1.759*10^11;//Value of e/m in C/kg
V=6000;//beam voltage in V

//CALCULATION
V0=((x/8)*(B^2)*(b^2)*(1-(a/b)^2)^2)/1000;//Hull cut-off voltage in kV
Bc=((sqrt(8*(V/x)))/(b*(1-(a/b)^2)))*1000;//Cut-off magnetic flux density in mWb/sqm
fc=((x*B)/(2*(%pi)))/10^9;//Cyclotron frequency in GHz

//OUTPUT
mprintf('\nHull cut-off voltage is V0=%2.3f kV\nCut-off magnetic flux density is Bc=%1.6f mWb/sqm \nCyclotron frequency is fc=%1.4f GHz',V0,Bc,fc);

//=========================END OF PROGRAM===============================


//Check the answers once 
//Correct answers are
//Hull cut-off voltage is V0=5.066 kV
//Cut-off magnetic flux density is Bc=1.305953 mWb/sqm 
//Cyclotron frequency is fc=0.0336 GHz 
