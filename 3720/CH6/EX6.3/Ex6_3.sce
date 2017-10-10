//Example 6_3
clc;clear;
// Given values
//From example 6_2
b=1.03;// The momentum-flux correction factor
m=14;// Water flow rate in kg/s
v_1=1.24;// The inlet velocity in m/s
v_2=20;// The outlet velocity in m/s
P_1g=202200;// Gage pressure in N/m^2
A_1=0.0113;// m^2

//Calculation
F_Rx=(-b*m*(v_2+v_1))-(P_1g*A_1);// N
printf("The anchoring force needed to hold the elbow in place=%0.0f N\n",F_Rx);
// The answer vary due to round off error
