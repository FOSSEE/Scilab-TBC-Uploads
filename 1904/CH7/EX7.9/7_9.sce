//To Determine the location of the substation
//Page 344
clc;
clear;

Vll=13.2; //Voltage in kV (Line voltage)
TCDi=0.45; //Load Density in kVA per feet
FD=1.08; //Diversity Factor for all loads
FLS=0.2; //Annual Loss Factor
DFi=0.6; //30 min Annual Demand Factor

Dg=TCDi*DFi/FD; //Divesified Maximum Demand of the Group

L=30000; //Length of the Whole Feeder in Feet
 
//To Achieve Minimum Voltage Drop, The Substation must be located at the centre of the line 
Ln=15000; //NEW Length of the Feeder

SPK=Dg*Ln; //Peak Load on each main of the substation trnasformer
I=(SPK/(sqrt(3)*Vll)); //Current in the Line

K=0.0009; //For the Assumed Conductor
VD=K*SPK*Ln/(2*5280); //Voltage Drop, Is divided by 5280, to convert the length in miles

printf('\na) To Achieve Minimum Voltage Drop, The Substation is Placed at the Centre of the Line,\n and For a Current of %g A following in it, #4 AWG or #2 AWG ACSR conductors are used\n',I)
printf('b) For a #4 AWG Copper Conductor, The Percentage Voltage drop at annual peak load is %g pecent\n',VD)

//Calculation Mistake in the TextBook
