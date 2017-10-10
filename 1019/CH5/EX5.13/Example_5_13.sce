//Example 5.13
clear;
clc;

//Given
T=300;//temperature in K
delVg=-1.5;//moles of gaseous product-moles of gaseous reactant
R=8.314;//gas constant in J K^-1 mol^-1

//To determine the difference between delG and delA
a=delG-delA;//assume
a=delVg*R*T;//difference between delG and delA in J
mprintf('delG - delA = %f J mol^-1',a);
//end