// Example 7.8 Construct Fisher's ideal index number
clc;
clear;
Po=[8 10 7];
Pn=[12 11 8];
Qo=[6 5 8];
Qn= [5 6 5];
PPI=(sum(Pn.*Qn)/sum(Po.*Qn)*100);
LI=(sum(Pn.*Qo)/sum(Po.*Qo)*100);
disp(PPI,"Praasches Price Index",LI,"Laspeyres index = ");
