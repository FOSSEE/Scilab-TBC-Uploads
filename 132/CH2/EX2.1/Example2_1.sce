//Example 2.1
//Program to Obtain Equivalent Current Source Representaion from Given Voltage Source Representation
clear;
clc ;
close ;
//Voltage Source or Thevenin's Representaion (Series Voltage Source & Resistor)
Vs=2; //Volts
Rs=1; //Ohm
//Current Source or Norton's Representaion (Parallel Current Source & Resistor)
Is=Vs/Rs; //Amperes
//Displaying The Results in Command Window
printf("\n\n\t The Short Circuit Current Value is %f Amperes.",Is);
printf("\n\n\t The Source Impedence Value is %f Ohm.",Rs);
printf("\n\n\t The Current Source & Source Impedance are connected in Parallel.");