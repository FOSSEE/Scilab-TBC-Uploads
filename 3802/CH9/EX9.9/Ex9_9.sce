//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex9_9.sce.

//input data are taken from example 9.8
clc;
clear;
VI1=10e6;
pf1=0.75;
pfc=cosd(90-asind(7/100));
KVAc=VI1*((sqrt(1-pf1^2))/(sqrt(1-pfc^2)))*1e-3;
MVAc=KVAc*1e-3;
printf("\n The capacity of synchronous condenser which is desired to raise the power factor to unity=%1.2f MVA",MVAc);
