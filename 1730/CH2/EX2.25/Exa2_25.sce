//Exa2.25
clc;
clear;
close;
//given data
toh=1.73//in micro-ohm-cm
tohDesh=1.74;//in micro-ohm-cm
sigma=1/toh;// conductivities of pure metal
sigmaDesh=1/tohDesh;//conductivities metal with impurity
PercentImpurity=((sigma-sigmaDesh)/sigma)*100;
disp(" Percent impurity in the rod is : "+string(PercentImpurity)+" %")