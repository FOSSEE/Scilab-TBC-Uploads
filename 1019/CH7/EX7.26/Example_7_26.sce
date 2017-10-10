//Example 7.26
clear;
clc;

//Given
R=0.082;//gas constant in atm dm^3 K^-1 mol^-1
delTf=5.50-0.38;//freezing temperature depression for napthalene in K
delTfo=5.50-1.66;//freezing temperature depression for benzoic acid in K
m=1;//molality of acid solution in mol kg^-1

//To determine the degree of dimerization ad the equillibrium constant
Kf=delTf/m;//freezing point depression constant of benzene
delTfc=Kf*m;//freezing temperature depression for benzoic acid (ideal) in K
a=(1-(delTfo/delTfc))*2;//degree of dimerization
K=((1-a)/(1-(a/2)))/((a/2)/(1-(a/2)))^2;//equillibrium constant
mprintf('The degree of dimerization = %f',a);
mprintf('\n The equillibrium constant = %i',K);
//end