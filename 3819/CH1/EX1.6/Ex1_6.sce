// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.6

//Given Data Set in the Problem
visc=1/10               //In SI Units
D=10/100                //In SI Units
dy=1.5/1000             //Distance between shaft and journal bearing
N=150                   //In RPM

//Calculations
//Intensity of the shear due to the Oil
du= (%pi*D*N)/60                   //du=(πDN)/60....The tangential velocity which causes shaer
ss=visc*(du/dy)
mprintf("The Shear stress due to the oil is %f N/m^2 \n",ss)
