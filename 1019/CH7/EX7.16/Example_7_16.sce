//Example 7.16
clear;
clc;

//Given
R=8.314;//gas constant in J K^-1 mol^-1
delTf=10;//Freezing temperature depression in K
Kf=1.86;//molal freezing point depression constant of water K mol^-1 kg
M2=32;//molecular mass of methyl alcohol in g
w1=100;//mass of water in g

//To determine the mass of methyl alcohol required
w2=(delTf*M2*w1)/(Kf*1000);//mass of methyl alcohol required in g
mprintf('The mass of methyl alcohol required = %f g',w2);
//end