// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.1

//Given Data Set in the Problem
D=30/100
d=4.5/100
F=500

//Calculations
A_ram=%pi/4*D^2         //Area of ram   
A_plunger=%pi/4*d^2         //Area pof plunger
P_plunger=F/A_plunger
 //Pressure is transmitted equally in all directions ,thus,
W_ram=P_plunger*A_ram 
mprintf("The Weight of the ram is %f kN",W_ram/1000);
