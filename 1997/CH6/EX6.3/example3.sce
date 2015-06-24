//Chapter-6 example 3
//=============================================================================
clc;
clear;
//input data
e   = 1.609*10^-19;//charge of electron
me  = 9.109*10^-31;//mass of electron in kg
B   = 0.40;//magnetic flux density
b   = 10*10^-2;//Radius of vane edge from the centre
a   = 4*10^-2;//radius of cathode

//Calculations
Wc  = (e/me)*B;//cyclotron angular frequency in radians
Vc  = (e/(8*me))*(B^2)*(b^2)*(1-(a/b)^2)^2;//cut-off voltage
//Output
mprintf('Cyclotron Angular Frequency is %g rad\n Cut-off voltage is %g V\n',Wc,Vc);
mprintf(' Note:Cut-off voltage obtained in textbook is wrongly calculated.Instead of (a/b)^2 ,(a/b) is calculated');

//=============end of the program==============================================
