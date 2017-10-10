//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex9_8.sce.

clc;
clear;
VI1=10e6;
phi1=acosd(0.75);
phip=acosd(0.9);
phic=90-asind(7/100);             //given loss is 7% of KVA output
KVAc=VI1*(((sind(phi1)*cosd(phip))-(cosd(phi1)*sind(phip)))/((sind(phic)*cosd(phip))+(cosd(phic)*sind(phip))))*1e-3;
MVAc=KVAc*1e-3;
printf("\n  The capacity of the synchronous condenser= %1.2f MVA",MVAc)
