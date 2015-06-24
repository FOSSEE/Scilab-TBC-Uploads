// Exa 8.2
clc;
clear;
close;
// Given data
CH4 = 77;// in %
C2H6 = 22.5;//in %
H1 = 40.08;// heat liberated by CH4 in MJ/nm^3
H2 = 69.52;// heat liberated by C2H6 in MJ/nm^3
HCV = (CH4*H1+C2H6*H2)/100;// Higher calorific value in kJ/kg
disp(HCV,"The higher calorific value in MJ/nm^3")
V1= CH4*2/100;// volume of water due to combustion of CH4 in m^3
V2= C2H6*3/100;// volume of water due to combustion of C2H6 in m^3
V= V1+V2;// total volume in m^3
ms= 18/22.41;// in kg
LCV= HCV-ms*V*2.242;// in MJ/nm^3
disp(LCV,"The lower calorific value in MJ/nm^3")
disp("The word nm^3 means that cubic metre at normal temperature and pressure")

// Note: The calculated value in the book is not accurate
