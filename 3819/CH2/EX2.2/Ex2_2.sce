// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.2

//Given Data Set in the Problem
d_ram=20/100
d_plunger=3/100
F_ram=30*10^3

//Calculations
A_plunger=%pi/4*d_plunger^2
A_ram=%pi/4*d_ram^2
//We know that,Pressure on plunger =Pressure on ram 
//Thus, (F/A)_ram=(F/A)_plunger
//F_plunger=(F/A)_ram * A_plunger
F_plunger=F_ram/A_ram*A_plunger
mprintf("The Force required at the plunger is %f N",F_plunger)
