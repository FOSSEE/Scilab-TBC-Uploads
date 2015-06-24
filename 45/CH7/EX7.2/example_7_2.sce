//example 7.2
clc;
clear;
//prop_delay = input('Enter the propagation delay in nano seconds:');
prop_dely=24; // taking the given input 
 format('v',18); //setting the precision 
max_clk_frq = 1/prop_delay; // making necessary calculations 
max_clk_frq = max_clk_frq*10^3;
printf('maximum clock frequency is %f KHz',max_clk_frq); // displaying the result 
