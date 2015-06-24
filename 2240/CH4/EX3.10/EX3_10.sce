// Grob's Basic Electronics 11e
// Chapter No. 03
// Example No. 3_10
clear; clc;
// Asuming that the cost of electricity is 6 cent per kWh, how much will it cost to light a 100-W lightbulb for 30 days?

h = 24*30;    // Total hours = 24 hrs * 30 days

kWh = 0.1*h;    // 100W=0.1kW

Cost = kWh*0.06;    // 6 cent = $0.06

disp (Cost,'Cost in $')
