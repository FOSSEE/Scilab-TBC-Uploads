//Chapter 6, Problem 18
clc;
Q=10*10^-3;             //Charge
W=1.2;                  //Energy stored
V=(2*W)/Q;              //Calculating voltage
C=Q/V;                  //Calculating capacitance
disp("(a)");
printf("Voltage = %f V\n\n",V);
disp("(b)");
printf("Capacitance = %f uF",C*10^6);
