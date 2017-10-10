//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex1_1.sce.

clc;
clear;
P=200;            //power rating of lamp in watts
V=110;             //voltage rating of lamp in volts

//case1
printf("\n(a)")
I=(P/V);
printf("\nCurrent in the lamp=%f A",I)

//case2
printf("\n(b)")
T=1;               //time in hour for electric charge flow through the lamp
t=T*60*60;         //time in seconds for electric charge flow through the lamp
q=I*t;
printf("\nElectric charge flowing through the lamp for one hour=%f coloumb",q)

//case3
printf("\n(c)")
Numberofdaysinmay=31;
time=10;                     //on time of lamp in hour per day
unitcharge=1.20;             //electricity charge in rupees (1kwhr = 1unit)
t1=time*Numberofdaysinmay;   //on time of lamp  in hour per month 
Energyconsumed=P*t1;         //consumption of energy in watt-hour
Energyconsumedinkwhr=Energyconsumed/(1e3);//consumption of energy in kilowatt-hour
charges=Energyconsumedinkwhr*unitcharge;
printf("\nCharge for electricity=%f rupees",charges)

