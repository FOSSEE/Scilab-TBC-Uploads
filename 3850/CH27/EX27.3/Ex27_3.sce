
//To Find the ratio of Cp/Cv

//Example 27.3

clc;

clear;

Cv=5;//Molar Heat Capacity of Gas at constant volume

R=2;//Universal Gas constant in cal/mol-K

Cp=Cv+R;//Molar Heat Capacity of Gas at constant pressure

gama=Cp/Cv;//The ratio Cp/Cv

printf("Cp/Cv=%f",gama);
