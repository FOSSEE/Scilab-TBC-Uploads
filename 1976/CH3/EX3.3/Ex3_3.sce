
// To determine the Most Economical Cross Sectional Area to supply a 3 Phase Load
//Page 105
clc;
clear;
deff('a=LLF(b)','a=(0.25*b)+(0.75*(b^2))'); // Function to determine the Loss Load Factor

OFC=0.20; //Cost of single phase overhead feeder per m per unit area + 10
AIDC= 10*OFC/100; //Annual Interest and depriciation charges + 1
TE= 2.5*(10^6); // Total energy to be supplied per annum
CEW=10/100; // Cost of energy wasted per unit
LFS= TE/(1000*365*24); // Load factor of supply
Llf=LLF(LFS); // Load Loss factor
R=1/58; // Resistance of the cable per unit length
PF=1; // Unity power factor
MD= 1*(10^6); // Maximum Demand
V=11*(10^3); // Voltage of the feeder
I=MD/(sqrt(3)*V*PF); // Full Load Current
FLCL= 3*(I^2)*R; // Full Load Copper Loss per Metre
ACL= Llf*FLCL; // Actual Copper Loss
CCL=ACL*(365*24*CEW/1000); // Cost of Copper Loss
A=sqrt(CCL/AIDC);
printf('The Most Economical Cross sectional area for this Case is %g A/sq.mm',A)
// Calculation Mistake in the Book. Hence according to the concepts in the book the answer is as calculated. Please Note.

