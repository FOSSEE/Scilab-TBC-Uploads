// Example 4_4
clc;funcprot(0);
// Given data
P=400;// kPa
V_1=2;// m^3
T_2=200;// °C
Q=3500;// The amount of heat added in kJ

// Calculation
// Using the steam tables
v_1=0.5342;// m^3/kg
u_1=2674;// kJ/kg
m=V_1/v_1;// kg
// V_2=m*v_2
// Q-(P*(V_2-V_1))=(u_2-u_1)*m---->(a)
// This requires the trial and error process.
// For example,guess
v_2=1.0;// m^3/kg
u_2=((Q-(P*((m*v_2)-V_1)))/m)+u_1;// kJ/kg
// From the steam tables at P=0.4 MPa
T_2=654;// °C
// The v_2 gives 
T_2=600;// °C
// Guess
v_2=1.06;// m^3/kg
u_2=((Q-(P*((m*v_2)-V_1)))/m)+u_1;// kJ/kg
// The tables are interpolated to give 
T_2=640;// °C
// The v_2 gives 
T_2=647;// °C
// The final temperature being approximately
T_2=644;// °C
printf("\nThe final temperature being approximately,T_2=%3.0f°C",T_2);
