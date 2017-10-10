//Example 7.13
clear;
clc;

//Given
R=8.314;//gas constant in J K^-1 mol^-1
Tb=353.1;//temperature in K
w2=13.86;//weight of the solute in g
w1=100;//weight of solvent in g
M1=78;//molecular mass of solvent in g
M2=154;//molecular mass of solute in g
delTb=2.3;//elevation in boiling point in K

//To determine the Kb and delHvap
m=(w2/M2)*(1000/w1);//molality in mol kg^-1
Kb=delTb/m;//boiling point elevation constant in K mol^-1 kg
delHvap=(R*(Tb^2)*M1)/(1000*Kb);//heat of vapourization in J mol^-1
mprintf('The heat of vapourization, delHvap = %f J mol^-1',delHvap);
mprintf('\n The molal boiling point elevation constant of benzene is = %f K kg mol^-1',Kb);
//end