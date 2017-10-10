//Example 3.4
clear;
clc;

//Given 
delH1 = 10.72;//delH1 is the heat of reaction in kJ (i)
delH2 = 4.68;//delH2 is the heat of reaction in kJ (ii)
delH3 = -1.16;//delH3 is the heat of reaction in kJ (iii)
 
//To determine the heat of required reaction
delH = delH1-delH2+delH3;//heat of reaction in kJ
mprintf('heat of required reaction = %f kJ',delH);
//end