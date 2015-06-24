clc;
clear;

printf("\n Example 9.15\n");

A1=2; //Area of rectangle(Surface 1)
A2=%pi*1^2/4; //Area of disc (Surface 2)
T1=1500; //Temperature of Surface 1
T2=750; //Temperature of Surface 2
F12=0.25; //View factor
sigma=5.67e-8;
//From equation 9. 1 26:
F21=A1*F12/A2;
printf("\n View factor, F12 = %.3f",F21);
Q12=sigma*A1*F12*(T1^4-T2^4);
printf("\n The net radiation transfer = %.0f kW",Q12*1e-3);