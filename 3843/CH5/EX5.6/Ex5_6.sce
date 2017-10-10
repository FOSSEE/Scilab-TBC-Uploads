// Example 5_6
clc;funcprot(0);
// Given data
T_H=500;// K
T_L=300;// K
P_1=80*10^3;// Pa
v_4=10;// m^3/kg
R=287;// J/kg.K
k=1.4;// The specific heat ratio

// Calculation
n=(1-(T_L/T_H))*100;// %
T_1=T_L;// K
T_2=T_H;// K
v_1=(R*T_1)/P_1;// m^3/kg
v_2=v_1*(T_1/T_2)^(1/(k-1));// m^3/kg
T_4=T_L;// K
T_3=T_H;// K
v_3=v_4*(T_4/T_3)^(1/(k-1));// m^3/kg
q_H=(R/10^3)*T_H*log(v_3/v_2);// kJ/kg
w=(n/100)*q_H;// kJ/kg
printf("\nThe thermal efficiency,n=%2.0f percentage \nThe work output,w=%3.0f kJ/kg",n,w);
