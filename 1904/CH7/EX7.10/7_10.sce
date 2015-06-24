//To Determine the Annual Enery Loss
//Page 346
clc;
clear;

Vll=13.2; //Voltage in kV (Line voltage)
TCDi=0.45; //Load Density in kVA per feet
FD=1.08; //Diversity Factor for all loads
FLS=0.2; //Annual Loss Factor
DFi=0.6; //30 min Annual Demand Factor

Dg=TCDi*DFi/FD; //Divesified Maximum Demand of the Group
L=30000; //Length of the Whole Feeder in Feet
I=164.2; //Current

r=0.592; //Resistance Per Mile
R=r*L/(3*5280); //Total Resistance

CL=3*(I^2)*R; //Total Power Loss in entire length

TAEL=CL*FLS*8760/(10^3); //Total Annual Energy Loss

printf('\nThe Total Annual Eddy Current Loss is %g kWhr\n',TAEL)


