//Caption:In the single phase transformer,find the ratio of iron and copper loss such that maximum efficiency occurs at 75% of full load.
//Exam:3.31
clc;
clear;
close;
x=75/100;//the value of load which is 75% of full load
P_r=x^2;//Ratio of the iron loss and copper loss for maximum efficiency
disp(P_r,'Ratio of the iron and copper loss for the maximum efficiency=');