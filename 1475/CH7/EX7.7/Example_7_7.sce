// Example 7.7 From the following price and quantity data, compute Paashe's Price index
clc;
clear;
Po=[4 60 35];
Pn=[5 70 40];
Qo=[95 118 50];
Qn= [120 130 70];
PPI=(sum(Pn.*Qn)/sum(Po.*Qn)*100);
disp(PPI,"Praasches Price Index = ");

