// Example 7.18 Prepare price and quantity index numbers for 1972
clc;
clear;
Po=[2 2.5 8 1];
Pn=[4.5 3.2 4.5 1.8];
Qo=[5 7 6 2];
Qn= [7 10 6 9];
PPI=(sum(Pn.*Qn)/sum(Po.*Qn)*100);
LI=(sum(Pn.*Qo)/sum(Po.*Qo)*100);
FI=sqrt(LI*PPI);
disp(FI,"Fishers formula  =",PPI,"Praasches Price Index",LI,"Laspeyres index = ","PRICE INDEX NUMBER : :");

PQI=(sum(Pn.*Qn)/sum(Pn.*Qo)*100);
LQI=(sum(Po.*Qn)/sum(Po.*Qo)*100);
FQI=sqrt(LQI*PQI);
disp(FQI,"Fishers formula  =",PQI,"Praasches Price Index",LQI,"Laspeyres index = ","QUALITY INDEX NUMBER : :");

