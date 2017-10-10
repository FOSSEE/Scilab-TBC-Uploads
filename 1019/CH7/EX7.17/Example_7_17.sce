//Example 7.17
clear;
clc;

//Given
R=8.314;//gas constant in J K^-1 mol^-1
delTf=0.52;//Freezing temperature depression in K
Kf=12;//molal freezing point depression constant of the solvent K mol^-1 kg
w2=0.9;//mass of solute in g
w1=180;//mass of solvent in g
To=282;//freezing point of the solvent in K

//To determine the molecular formula of solute,H2(CH2)n
M2=(Kf*1000*w2)/(w1*delTf);//molecular mass of solute in g
n=(M2-2)/14;
mprintf('The molecular mass of the hydrocarbon = %f',M2);
mprintf('\n The molecular formula of solute is H2(CH2)%i',n);
//end