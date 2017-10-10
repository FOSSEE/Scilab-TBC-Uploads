// Example 2_1
clc;funcprot(0);
// Given data
P_a=1;// kPa
P_b=100;// kPa
P_c=10000;// kPa
v_ga=129.2;// m^3/kg
v_fa=0.001;// m^3/kg
v_gb=1.694;// m^3/kg
v_fb=0.001;// m^3/kg
v_gc=0.01803;// m^3/kg
v_fc=0.00145;// m^3/kg

// Calculation
// (a)
v_fga=v_ga-v_fa;// m^3/kg
// (b)
v_fgb=v_gb-v_fb;// m^3/kg
// (c)
v_fgc=v_gc-v_fc;// m^3/kg
printf("\n(a)v_fg=%3.1f m^3/kg \n(b)v_fg=%1.3f m^3/kg \n(c)v_fg=%0.5f m^3/kg",v_fga,v_fgb,v_fgc);
