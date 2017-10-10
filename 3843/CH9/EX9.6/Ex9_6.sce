// Example 9_6
clc;funcprot(0);
// Given data
r=16;// The compression ratio
T_1=200+273;// K
P_1=200;// kPa
r_c=2;// The cut off ratio
r_p=1.3;// The pressure ratio
c_p=1.00;// kJ/kg.K
c_v=0.717;// kJ/kg.K
R=0.287;// kJ/kg.K
k=1.4;// The specific heat ratio

// Calculation
n=1-((1/(r^(k-1)))*(((r_p*r_c^k)-1)/((k*r_p*(r_c-1))+(r_p-1))));// The thermal efficiency
T_2=T_1*(r)^(k-1);// K
T_3=T_2*r_p;// K
T_4=T_3*r_c;// K
q_in=(c_v*(T_3-T_2))+(c_p*(T_4-T_3));// kJ/kg
w_out=n*q_in;// kJ/kg
v_1=(R*T_1)/P_1;// m^3/kg
MEP=w_out/(v_1*(1-(1/r)));// kPa
printf("\nThe thermal efficiency,n=%0.3f or %2.1f percentage. \nThe heat input,q_in=%4.0f kJ/kg. \nThe work output,w_out=%4.0f kJ/kg. \nThe MEP=%4.0f kPa",n,n*100,q_in,w_out,MEP);
