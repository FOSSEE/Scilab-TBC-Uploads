//A Textbook of Chemical Engineering Thermodynamics
//Chapter 2
//First Law of Thermodynamics
//Example 4


clear;
clc;


//Given:
//Step 1: constant pressure process
//Step 2: costant volume process
//Step 3: adibatic process

//To find internal energy change during each step and work done during adiabatic process

//For step 1
W1 = -50; //work received in J
Q1 = -25; //heat gven out in J
U1 = Q1-W1; //internal energy change in J
mprintf('Change in internal energy for constant pressure process is %i J',U1);

//For step 2
W2 = 0; //work done for constant volume process is zero
Q2 = 75; //heat received in J
U2 = Q2; //internal energy change in J
mprintf('\nChange in internal energy for constant volume process is %i J',U2);

//For step 3
Q3 = 0; //no heat exchange in adiabatic process
//Since the process is cyclic
//U3+U2+U1 = 0;
U3 = -(U1+U2);
W3 = -U3; //work done in J
mprintf('\nWork done during adiabatic process is %i J',W3);

//end