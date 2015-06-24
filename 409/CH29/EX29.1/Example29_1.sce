clear ;
clc;
// Example 29.1
printf('Example 29.1\n\n');
//page no. 895
// Solution fig. E29.1

// Given 
DBT = 90 ;// Dry bulb temperature - [degree F]
WBT = 70 ;// Wet bulb temperature - [degree F]

//Get point A using DBT & WBT. Following information is obtained from humidity chart, fig. E29.1

printf('(a) The Dew point is located at point B or about 60 degree F, using constant humidity line.\n');
printf(' (b) By interpolation between 40%% and 30%% RH , you can find point A is at 37%% relative humidity .\n');
printf(' (c) You can read humidity from the righthand ordinate as 0.0112 lb H2O/lb dry air .\n');
printf(' (d) By interpolation again between 14.0 cubic feet/lb and 14.5 cubic feet/lb lines , you can find humid volume to be 14.1 cubic feet/lb dry air.\n');
printf(' (e) The enthalpy value of saturated air with WBT 70 degree F is 34.1 Btu/lb dry air .\n');