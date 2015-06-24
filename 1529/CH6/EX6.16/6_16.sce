//Chapter 6, Problem 16
clc;
C=3*10^-6;                      //Capacitance
V=400;                      //Voltage across capacitor
t=10*10^-6;                 //Time in sec
W=(1/2)*C*V^2;              //Calculating energy stored
P=W/t;                      //Calculating power
disp("(a)");
printf("Energy stored in a 3 μF capacitor = %f J\n\n",W);
disp("(b)");
printf("Average power = %f kW",P/1000);
