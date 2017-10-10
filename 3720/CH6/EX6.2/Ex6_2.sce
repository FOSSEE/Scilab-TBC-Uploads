//Example 6_2
clc;clear;
// Given values
m=14;//Water flow rate in kg/s
rho=1000;//The density of water in kg/m^3
A_1=0.0113;// The cross sectional area of the elbow at inlet in m^2
A_2=7*10^-4;// The cross sectional area of the elbow at outlet in m^2
z_2=0.3;// m
z_1=0;// m
g=9.81;// The acceleration due to gravity in m/s^2
theta=30;// degree
b=1.03;// The momentum-flux correction factor

// Calculation 
//(a)
v_1=m/(rho*A_1);
v_2=m/(rho*A_2);//The inlet and the outlet velocities in m/s
P_1g=(rho*g*(((v_2^2-v_1^2)/(2*g))+(z_2-z_1)))/1000;// kPa
printf("The gage pressure at the center of the inlet of the elbow=%0.1f kPa\n",P_1g);
//(b)   z
F_Rx=b*m*(((v_2*cosd(theta))-v_1))-(P_1g*1000*A_1);// N
F_Rz=b*m*v_2*sind(theta);// N
printf("The anchoring force of the elbow be F_Rx=%0.0f N,F_Rz=%0.0f N\n",F_Rx,F_Rz);
// The answer vary due to round off error
