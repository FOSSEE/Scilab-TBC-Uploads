//Chapter 6, Problem 11
clc;
C=12*10^-6;                 //Equivalent capacitance
C1=30*10^-6;                //Capacitance of capacitor1
C2=(C*C1)/(C1-C);           //Calculating capacitance of capacitor2
printf("Unknown capacitance = %f uF",C2*10^6);
