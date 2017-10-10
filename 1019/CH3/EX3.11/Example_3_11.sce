//Example 3.11
clear;
clc;

//Given 
delHfs = -57.36;//heat of neutralization  in kJ of strong acid and strong base
delHfw = -42.02;//heat of neutralization in kJ of weak acid and weak base

//To determine the heat of ionization of weak acid and weak base
delHi = delHfw-delHfs;//heat of ionization in kJ
mprintf('heat of ionization of weak acid and weak base = %f kJ',delHi);
//end