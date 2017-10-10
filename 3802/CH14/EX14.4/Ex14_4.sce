//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex14_4.sce.

clc;
clear;
max_demand=75;                       //in kilowatt
time_duration=24*365;                   //in hour
load_factor=0.45;
tariff1=650;
tariff2=1.30;
annual_energy_consump=max_demand*time_duration*load_factor;
Ce=tariff2*annual_energy_consump;
Cf=tariff1*max_demand;   
total_annualcharge=Ce+Cf;  
overall_costperkwhr=total_annualcharge/annual_energy_consump;
printf(" \n Overall cost per kWh= %1.2f rupees \n",overall_costperkwhr)
