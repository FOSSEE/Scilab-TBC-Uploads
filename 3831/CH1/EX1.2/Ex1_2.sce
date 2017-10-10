// Example 1_2
clc;funcprot(0);
// Given data
T=55;// °F

// Calculation
// (a)
T_w=0;// The freezing point of water in °N
T_wF=32;// The freezing point of water in °F
T_bh=12;// The temperature of the body in °N
T_bhF=98.6;// The temperature of the body in °F
x=T_bh*(1-((T_bhF-T)/(T_bhF-T_wF)));// The temperature in °N
printf("\n(a)The temperature on the Newton scale,x=%1.2f °N",x);
// (b)
T_w=0;// The temperature in °Re
T_wF=80;// The temperature in °Re
T_bh=32;// The temperature in °F
T_bhF=212;// The temperature in °F
r=T_wF*(1-((T_bhF-T)/(T_bhF-T_bh)));// The temperature in °Re
printf("\n(b)The temperature on the Reaumur scale,r=%2.1f °Re",r);
// (c)
T_w=273.15;// The temperature in K
T_wF=373.15;// The temperature in K
T_bh=32;// The temperature in °F
T_bhF=212;// The temperature in °F
z=T_wF-((T_wF-T_w)*(((T_bhF-T)/(T_bhF-T_bh))));// The temperature in K
printf("\n(c)The Kelvin temperature,z=%3.1f K",z);
