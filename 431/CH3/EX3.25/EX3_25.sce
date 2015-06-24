//Calculate efficiency of transformer //Chapter 3
//Example 3.25
//page 234
clear;
clc;
disp("Example 3.25")
kVA=500;                //rating of the transformer
R1=0.4;                //resistance in primary winding inohms
R2=0.001;              //resistance in secondary winding in ohms
V1=6600;                //primary voltahe in volts
V2=400;                 //secondary voltage in volts
ironloss=3;              //iron loss in kilowatt
pf=0.8;                  //power factor lagging
I1=(kVA*1000)/V1;              
printf("\nPrimary winding current=%fA",I1);
I2=(I1*V1)/V2;
printf("\nSecondary winding current=%fA",I2);
Culoss=((I1^2*R1)+(I2^2*R2));
printf("\nCopper losses in the two winding=%fWatts",Culoss);
effi=(kVA*pf*100)/((kVA*pf)+ironloss+(Culoss/1000));
printf("\nEfficiency at 0.8 p.f=%fpercent",effi);
