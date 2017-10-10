clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 11 :  AC power Analysis 
// Example 11 - 18

clear; clc; close; 
//
// Given data
P          = 300.0000;
Vrms       = 13.0000; 
pf         = 0.8000;
Hours      = 520;
Energy_Charge = 0.0600;
pf_penalty  = 0.001;
pf_credit   = 0.001;
// Calculations Energy Consumed
W = P * Hours;
// Calculations Delta Energy Consumed 
Delta_W = (5*pf_penalty)*W;
// Calculation Total Energy Consumed 
Wt = W + Delta_W;
// Calculations Cost Per Month
Cost = Energy_Charge * Wt;
//
disp("Example 11-18 Solution : ");
printf(" \n a. Cost = Cost For Month    = %.3f Dollar",Cost)
