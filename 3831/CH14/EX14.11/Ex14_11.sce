// Example 14_11
clc;funcprot(0);
// Given data
m=4.00;// lbm/s
T_1=530;// R
p_1=1;// psia
p_2s=3.00// psia
p_3=3.00;// psia
p_4s=1;// psia
T_3=600;// R
c_p=0.240;// Btu/(lbm.R)
k=1.40;// The specific heat ratio

// Calculation
// (a)
T_4s=T_3*((p_4s/p_3)^((k-1)/k));// R
W_expander=m*c_p*(T_3-T_4s);// Btu/s
// (b)
T_2s=T_1*((p_2s/p_1)^((k-1)/k));// R
W_compressor=m*c_p*(T_1-T_2s);// Btu/s
// (c)
PR=p_3/p_4s;// Pressure ratio
COP=(((PR)^((k-1)/k))-1)^-1;// The coefficient of performance of the unit
// (d)
W_net=(abs(W_compressor)-W_expander);// Btu/s
Q_L=(COP*(W_net)*60*(1/200));// The refrigeration capacity of the unit in tons
printf("\n(a)The expander power,W_expander=%3.0f Btu/s \n(b)The compressor power,W_compressor=%3.0f Btu/s \n(c)The coefficient of performance of the unit,COP=%1.2f \n(d)The refrigeration capacity of the unit in tons,Q_L=%2.1f tons of refrigeration",W_expander,W_compressor,COP,Q_L);
