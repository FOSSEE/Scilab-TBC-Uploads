//Example 8.9 From the following table calculate TFR GRR NRR
clc;
clear;
R=0.48;
BR=[23.6 114.9 145.1 122.6 79.6 35.9 3.3];
YL=[4482 4426 4359 4288 4202 4100 3979];
SRR=BR./1000;
TFR=sum(SRR)*5;
GRR=R*TFR;
NRR=(R*sum(SRR.*YL))/1000;
disp(NRR,"Net Reproduction Rate =",GRR,"Gross Reproduction Rate =",TFR,"Total Fertility Rate =",SRR,"Age Specific Fertility Rate =",YL,"Years Lived by 1000 Females =",BR,"Birth Rates per 1000 Women",R,"Ratio of females to total birth is =");
