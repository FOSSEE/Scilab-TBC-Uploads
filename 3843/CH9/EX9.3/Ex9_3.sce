// Example 9_3
clc;funcprot(0);
// Given data
r=12;// The compression ratio
P_1=200;// kPa
P_3=10000;// kPa
k=1.4;// The specific heat ratio

// Calculation
// (a)
c=(1/(12-1))*100;// The percent clearance in %
// (b)
// r=V_1/V_2
P_2=P_1*(r)^k;// kPa
// V_3/V_4=V_2/V_1
P_4=P_3*(1/r)^k;// kPa
// W_cycle=20070*V_2;.............(1)
// W_cycle=MEP*(12V_2-V_2);.......(2)
// Solving equations (1)&(2) we get,
MEP=20070/11;// kPa
printf("\n(a)The percent clearance,c=%1.2f percentage \n(b)MEP=%4.0f kPa",c,MEP);
