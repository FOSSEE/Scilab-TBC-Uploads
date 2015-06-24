//Example 2.2
//Program to Obtain Equivalent Voltage Source Representaion from Given Current Source Representation
clear;
clc ;
close ;
//Current Source or Norton's Representaion (Parallel Current Source & Resistor)
Is=0.2; //Amperes
Zs=100; //Ohms
//Voltage Source or Thevenin's Representaion (Series Voltage Source & Resistor)
Vs=Is*Zs; //Volts
//Displaying The Results in Command Window
printf("\n\n\t The Open Circuit Voltage is %f Volts.",Vs);
printf("\n\n\t The Source Impedence Value is %f Ohms.",Zs);
printf("\n\n\t The Voltage Source & Source Impedance are connected in Series.");