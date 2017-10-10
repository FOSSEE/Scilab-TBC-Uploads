//Example 3.7
clear;
clc;

//Given 
delHfCO2 = -393.5;//heat of formation in kJ of carbondioxide
delHfH2O = -285.8;//heat of formation in kJ of water
delH = -3303;//heat of reaction in kJ 

//To determine the heat of formation of benzene
delHfC6H6 = (3*delHfH2O)+(6*delHfCO2)-(delH);//heat of formation of benzene in kJ
mprintf('heat of formation of benzene = %f kJ',delHfC6H6);
//end