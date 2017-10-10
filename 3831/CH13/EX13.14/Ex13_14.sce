// Example 13_14
clc;funcprot(0);
// Given data
CR=8.00/1.00;// The isentropic compression ratio
T_3=70.0;// °F
p_3=14.7;// psia
k=1.4;// The specific heat ratio

// Calculation
// (a)
T_4s=(T_3+459.67)*(CR^(k-1));// R
// (b)
p_4s=p_3*CR^(k);// psia
// (c)
n_T_otto=(1-((CR)^(1-k)))*100;// %
printf("\n(a)The air temperature at the end of the isentropic compression stroke,T_4s=%4.0f R \n(b)The pressure at the end of the isentropic compression stroke before ignition occurs,p_4s=%3.0f psia \n(c)The Otto cold ASC thermal efficiency of this engine,n_T=%2.1f percentage",T_4s,p_4s,n_T_otto);
// The answer vary due to round off error
