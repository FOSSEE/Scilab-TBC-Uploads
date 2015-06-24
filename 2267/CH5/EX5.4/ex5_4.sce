//Part A Chapter 5 Example 4
clc;
clear;
close;
T1=827+273;//K
T2=27+273;//K
T3=-13+273;//K
Q1=2000;//kJ
Q2=545.45;//kJ
WE=Q1-Q2;//kJ
Q3BYQ4=T3/T2;
WE_sub_WR=300;//kJ
WR=WE-WE_sub_WR;//kJ
Q43=WR;//kJ(Q4-Q3=WR)
Q4=WR/(1-Q3BYQ4);//kJ
Q3=Q4-Q43;//kJ
Qt=Q2+Q4;//kJ
disp("Heat transfered to refrigerant = "+string(Q3)+" kJ");
disp("Total heat transfered to low temperaturereservoir = "+string(Qt)+" kJ");
//Answer is not accurate in the book.
