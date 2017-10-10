//Example 7.25
clear;
clc;

//Given
R=0.082;//gas constant in atm dm^3 K^-1 mol^-1
delTf=0.3;//freezing temperature depression in K
Kf=1.86;//freezing point depression constant of waater
m=0.1;//molality of acid solution in mol kg^-1

//To determine the degree of dissociation
a=(delTf/(Kf*m))-1;//degree of dissociation
mprintf('The degree of dissociation = %f',a);
//end