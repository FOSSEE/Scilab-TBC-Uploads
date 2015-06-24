//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 9.13\n\n\n");
// Chapter 9 : Gas Power Cycles
// Problem 9.13  (page no. 479) 
// Solution

//Now,in problem 9.12,
//An air-standard Diesel engine
rc=16; //Compression Ratio Rc=v2/v3
v4byv3=2; //Cutoff ratio=v4/v3
k=1.4; //with the cycle starting at 14 psia and 100 F  //It is apparent incerease in compression ratio yields an increased cycle efficiency
T2=100; //Unit:F //temperature 
T5=1018; //Unit:F //Found in 9.12 //The temperature of the exhaust of the cycle //Unit:R
ndiesel=0.614 //Efficiency of the diesel engine //Found in 9.12
//Now,in problem 9.13,
cp=0.24; //Unit:Btu/(lbm*R) //Specific heat constant for constant pressure process
cv=0.172; //Unit:Btu/(lbm*R) //Specific heat constant for constant volume process

Qr=cv*(T5-T2); //Heat rejected //Unit:Btu/lbm
//ndeisel=1-(Qr/qin); //Efficiency=ndeisel //qin=heat added
qin=Qr/(1-ndiesel); //Unit:Btu/lbm
J=778; //J=Conversion factor
networkout=J*(qin-Qr); //(ft*lbf)/lbm //Net work out per pound of gas
printf("Net work out per pound of gas is %f (ft*lbf)/lbm\n",networkout);
//The mean effective pressure is net work divided by (v2-v3):
mep=networkout/((16-1)*144); //1ft^2=144 in^2 //Unit:psia  //The mean effective pressure
printf("The mean effective pressure is %f psia",mep); 
