//Example 7.12
clear;
clc;

//Given
R=8.314;//gas constant in J K^-1 mol^-1
Tb=353.1;//Boiling temperature in K
delHvap=30.67;//heat of vapourization of benzene in kJ mol^-1
M1=78;//molecular mass of benzene in gm

//To determine the molal boiling point elevation constant of benzene
Kb=(R*(Tb^2)*M1)/(10^6*delHvap);//molal boiling point elevation constant of benzene in K kg mol^-1
mprintf('The molal boiling point elevation constant of benzene is = %f K kg mol^-1',Kb);
//end