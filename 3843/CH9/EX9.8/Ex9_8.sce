// Example 9_8
clc;funcprot(0);
// Given data
r=10;// The compression ratio
P_1=200;// kPa
T_1=100+273;// K
T_3=600+273;// K
R=0.287;// kJ/kg.K
k=1.4;// The specific heat ratio

// Calculation
v_1=(R*T_1)/P_1;// m^3/kg
T_4=T_3;// K
v_4=(T_4/T_1)*v_1;// m^3/kg
v_2=v_4/r;// m^3/kg
T_2=T_1;// K
P_2=(R*T_2)/v_2;// kPa
P_3=P_2;// kPa
v_3=(R*T_3)/P_3;// m^3/kg
w_out=(R*T_1*log(v_2/v_1))+(P_2*(v_3-v_2))+(R*T_3*log(v_4/v_3))+(P_1*(v_1-v_4));// The work output in kJ/kg
T_L=T_1;// K
T_H=T_3;// K
n=1-(T_L/T_H);// The thermal efficiency
q_in=w_out/n;// The heat input in kJ/kg
printf("\nThe work output,w_out=%3.0f kJ/kg \nThe heat input,q_in=%3.0f kJ/kg",w_out,q_in);
