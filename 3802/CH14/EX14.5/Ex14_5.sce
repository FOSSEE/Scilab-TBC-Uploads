//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex14_5.sce

clc;
clear;
tariff1=3.50;             //tariff in rupees per kilowatthour for first 500kilowatthour
tariff2=3.00;              //tariff in rupees per kilowatthour for next 500kilowatthour
tariff3=2.50;              //tariff in rupees per kilowatthour for usage exceeding 1000kilowatthour
days_in_a_month=31;
time_duration=24*days_in_a_month;
average_demand=2.5;                              //in kilowatt
monthly_consumption=time_duration*average_demand;
a1=500;               //kWh for tariff1
a2=500;                //kWh for tariff2
a3=monthly_consumption-a1-a2;          //kWh for tariff3
monthly_charge=(a1*tariff1)+(a2*tariff2)+(a3*tariff3);
printf("\n Monthly Charge=%d rupees.",monthly_charge)
