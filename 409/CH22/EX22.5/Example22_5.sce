clear ;
clc;
// Example 22.5
printf('Example 22.5\n\n');
//page no. 670
// Solution 

// Take pipe between initial and final level of water
// Given
h_in = -20 ;// Depth of water below ground-[ft]
h_out = 5 ;// Height of water level above ground-[ft]
h = h_out - h_in ;// Total height to which water is pumped-[ft]
V = 0.50 ;// Volume flow rate of water - [cubic feet/s]
ef = 100; // Efficiency of pump - [%] 
g = 32.2; // Acceleration due to gravity -[ft/square second] 
gc = 32.2 ;//[(ft*lbm)/(second square*lbf)]

M = V * 62.4 ;// mass flow rate - [lbm/s]
PE_in = 0 ;// Treating initial water level to be reference level
PE_out = (M*g*h*1.055)/(gc*778.2) ;// PE of discharged water -[lbm*(square feet/square second)]

// Assumptions to simplify Equation 22.8 are:
//1. Change in KE = 0.
//2. Q = 0 -By given assumption
//3. Let us assume that temperature of water is same in well and when it is discharged, therefore del_H = 0
// Reduced equation is W = del_PE, using this:
W = PE_out - PE_in ;//Work done on system = power delivered by pump, (since we are using mass flow rate and pump efficiency is 100 % , so W = Power) -[kW]

printf('The electric power required by the pump is %.2f kW. \n', W);