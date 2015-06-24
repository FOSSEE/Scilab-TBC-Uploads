clc();
clear;

// To determine the shape factor for the heat flow through a square duct whose surface temperatures are constant

// Since the duct is symmetrical. Only one of the corners is to be considered
Nc = 20;                    // Number of heat flow lanes 
Nr = 7;                     // Number of temperature increments 
S = Nc/Nr;                  // Shape factor
printf("The Shape factor for heat flow through square duct is %.2f \n ",S);
printf("And the heat transfer through conduction is %.2f kL(t1-t2)",S);