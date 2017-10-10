//Example 4_14
clc;funcprot(0);
//Given data
p_a=755;// mm of Hg
V_c=8;// m/sec
V_d=3;// m/sec
T_a=20;// °C
g=9.81;// m/s^2

//Calculation
// The minimum value of p_c corresponds to the saturation pressure of water vapour at 20°C.
//From steam table,
p_c=17.6;// mm of Hg
h_f=0.0;// m
p_b=760;// mm of Hg
h=(((p_a-p_c)*13.6)/p_b)-((V_c^2)/(2*g))+(((V_d^2)/(2*g))+h_f);// m
printf('\n The maximum possible height of the turbine,h=%0.1f meters above tailrace level.',h);
