clear
clc
//to find temperature measured by thermometer

//Given:
//factor by which resistance is increased
R_by_Rtr = 1.392
//temperature of triple point of water
Ttr = 273.16//in K

//Solution:
//using formula for measuring temperatures
//temperature measured by thermometer
T_R = Ttr*R_by_Rtr//in K

printf ("\n\n Temperature measured by thermometer T_R = \n\n %.1f K" ,T_R);
