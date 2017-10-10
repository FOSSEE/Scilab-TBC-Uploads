//Example 7.14
clear;
clc;

//Given
R=8.314;//gas constant in J K^-1 mol^-1
Tb=353.1;//temperature in K
w2x=0.5;//weight of the solute x in g
w2y=0.6;//weight of the solute y in g
Mx=128;//molecular mass of solute x in g
w1=50;//weight of solvent in g
delTx=0.4;//elevation in boiling point due to x in K
delTy=0.6;//elevation in boiling point due to y in K

//To determine My
My=w2y*Mx*delTx/(delTy*w2x);//molecular mass of y in g mol^-1
mprintf('The molecular mass of y is  %f g mol^-1',My);
//end