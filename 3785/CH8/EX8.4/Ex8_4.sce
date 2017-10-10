// Example 8_4
clc;funcprot(0);
// Given data
lambda=4;// W/mK
// From example 6.4
mu=6.7*10^-5;// Pa s
V=18.85;// m/s
h=1*10^-4;// m

// Calculation
// (a)
q_w=-(mu)*((V^2)/h);// The heat flux to the wall (y =0) for the bearing in W/m^2
// (b)
deltaT=(mu/lambda)*((V^2)/(2*h));// The temperature difference T_h-T_o across the oil gap in K
printf("\n(a)The heat flux to the wall (y =0) for the bearing,q_w=%1.3e W/m^2 \n(b)The temperature difference T_h-T_o across the oil gap is %2.2f K",q_w,deltaT);
