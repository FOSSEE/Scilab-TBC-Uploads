clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 11 :  AC power Analysis 
// Example 11 - 17

clear; clc; close; 
//
// Given data
P          = 200.0000;
P_max      = 1600.0000;
Demand_Charge = 5.0000;
Energy_Charge_1 = 8.0000;
Energy_Charge_2 = 5.0000;
// Calculations Total Demand Charge
Total_Demand_Charge =  P_max * Demand_Charge
// Calculations Energy Charge for The First 
Energy_Charge_1 = (Energy_Charge_1 * 50000)/100;
// Calculation Energy Charge Another 
Remaining_Energy = (200*1000) - (50000);
Energy_Charge_2 = (Energy_Charge_2 * Remaining_Energy)/100;
// Calculations Total Bills 
Total_Bills = Total_Demand_Charge + Energy_Charge_1 + Energy_Charge_2;
//
disp("Example 11-17 Solution : ");
printf(" \n a. Total_Bills  = Total Bills For Month    = %.3f Dollar",Total_Bills)

