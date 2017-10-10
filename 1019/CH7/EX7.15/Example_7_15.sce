//Example 7.15
clear;
clc;

//Given
R=8.314;//gas constant in J K^-1 mol^-1
To=278.15;//Freezing temperature in K
delHfus=9830;//heat of fusion of benzene in J mol^-1
M1=78;//molecular mass of benzene in g

//To determine the molal freezing point depression constant of benzene
Kf=(R*(To^2)*M1)/(1000*delHfus);//molal freezing point depression constant of benzene in K kg mol^-1
mprintf('The molal freezing point depression constant of benzene = %f K kg mol^-1',Kf);
//end