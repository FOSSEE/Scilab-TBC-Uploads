//Example 3.12
clear;
clc;

//Given 
delHfHCl = -168.0;//heat of formation  in kJ of HCl
delHf = 0;//heat of formation of H+ ions in kJ

//To determine the heat of formation of chloride ions
delHi = delHfHCl-delHf;//heat of formation of chloride ions in kJ
mprintf('heat of formation of chloride ions = %f kJ',delHi);
//end