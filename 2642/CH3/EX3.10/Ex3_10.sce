// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 3 : TRANSFORMER AND PER UNIT SYSTEM
// Example : 3.10


clc;clear; // clears the console and command history 

// Given data
kVA = 12    // kVA ratingss of transformer
n = 0.97    // maximum efficiency at unity power factor
t_1 = 8     // time in hours
P_1 = 10    // load in kW
pf_1 = 0.8  // lagging power factor
t_2 = 10    // time in hours
P_2 = 15    // load in kW
pf_2 = 0.90 // leading power factor
t_3 = 6     // time in hours at no load
P_3 = 0     // load in kW

// caclulations 
P_01 = kVA*1                      // o/p power at full load and unity factor in kW
P_in1 = (P_01/n)                  // i/p power at full load
P_tloss = P_in1-P_01              // total loss in kW
P_cu = P_tloss/2                  // copper loss at 12 kVA P_cu=P_i in kW
P_024 = P_1*t_1+P_2*t_2+P_3*t_3   // all day o.p power in kWh
P_i24 = 24*P_cu                   // iron loss for 24 hours in kWh
P_cu24 = P_cu*t_1*((P_1/pf_1)/P_01)^2+P_cu*t_2*((P_2/pf_2)/P_01)^2 // copper loss for 24 hours
P_in24 = P_024+P_i24+P_cu24       // all day i/p power in kWh
n_allday = (P_024/P_in24)*100     // all day efficiency

// display the result 
disp("Example 3.10 solution");
printf(" \n All day efficiency \n n_allday = %.0f percent \n", n_allday);

