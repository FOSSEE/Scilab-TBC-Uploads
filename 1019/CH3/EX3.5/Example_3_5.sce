//Example 3.5
clear;
clc;

//Given 
delH1 = -890.35;//delH1 is the heat of reaction in kJ (i)
delH2 = -285.84;//delH2 is the heat of reaction in kJ (ii)
delH3 = -393.51;//delH3 is the heat of reaction in kJ (iii)
 
//To determine the heat of formation of methane
delH = delH3+(2*delH2)-delH1;//heat of formation of methane in kJ
mprintf('heat of formation of methane = %f kJ',delH);
//end