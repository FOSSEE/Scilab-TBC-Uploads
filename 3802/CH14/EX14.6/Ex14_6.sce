//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex14_6.sce.

clc;
clear;
average_demand=450;
load_factor=0.65;
power_factor=0.8;
tariff1=75;        //in ruees per month per kVA
tariff2=1.30;           //in rupees per kilowatthour
working_time=8*300;
maximum_kw_demand=average_demand/load_factor;
maximum_kVA_demand=maximum_kw_demand/power_factor; 
annual_energy_charge=tariff2*average_demand*working_time;
annual_max_demand_charge=tariff1*12*maximum_kVA_demand;
annual_charge=annual_energy_charge+annual_max_demand_charge;
disp(annual_charge,'Annual bill of the consumer in rupees')
//The answer vary dueto roundoff error.
