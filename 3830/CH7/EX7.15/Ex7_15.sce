// Exa 7.15

clc;
clear;

// Given

// An LVDT
Vo = 1.25; // Output voltage
Dmax  = 0.0025;// max. deviation of linearity
L = 0.75; // weight of load in kgf

// Solution

Linearity = (Dmax/Vo)*100;
printf(' The linearity at a given load 0.65/kgf = %.1f percent \n',Linearity);
