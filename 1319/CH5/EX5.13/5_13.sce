// Calculating Efficiency using Sumpner test

clc;
clear;

P=200*(10^3);

W1= 4*(10^3); // Total iron loss for both the transformers
W2= 6*(10^3); // Total copper loss for both the transformers

n=P*100/(P+(W1/2)+(W2/2));// Efficiency

printf('The Efficiency of each transformer at full load = %f percent \n',n)
