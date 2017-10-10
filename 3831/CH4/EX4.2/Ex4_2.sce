// Example 4_2
clc;funcprot(0);
// Given data
E_fuel=15000;// Btu/min
E_exhaust=500;// Btu/min
W_1=200;// hp
W_2=50;// hp
E_thl=180000;// Top heat loss in Btu/h
E_Bhl=54000;// Bottom heat loss in Btu/h

// Solution
Q=-E_thl-E_Bhl;// The net heat transfer into the system in Btu/h
W=W_1+W_2;// The net work rate out of the system in hp
E_massflow=E_fuel-E_exhaust;// The net mass flow of energy into the system in Btu/min
E_T=(Q/60)-(W*42.4)+E_massflow;// The total energy transport rate in Btu/min
printf('\nThe total energy transport rate,E_T=%1.2f Btu/min',E_T);
