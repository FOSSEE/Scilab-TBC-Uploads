//Example 3.13
clear;
clc;

//Given 
delHfNaOH = -470.7;//heat of formation  in kJ of NaOH
delHfOH = -228.8;//heat of formation of OH- ions in kJ

//To determine the heat of formation of sodium ions
delHNa = delHfNaOH-delHfOH;//heat of formation of sodium ions in kJ
mprintf('heat of formation of sodium ions = %f kJ',delHNa);
//end