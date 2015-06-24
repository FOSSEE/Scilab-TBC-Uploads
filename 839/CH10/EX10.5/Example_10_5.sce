//clear//
clear;
clc;

//Example 10.5
//Given
Ts = -20; //[C]
Ta = 5; //[C]
T  = 0; //[C]
t = 12; //[h]
alpha = 0.0011; //[m^2/h]

//(a)
Temp_diff_ratio = (Ts-T)/(Ts-Ta);
//From Fig.(10.8),
Z = 0.91; 
//therefore depth
x = Z*2*sqrt(alpha*t) //[m]

//(b)
//From Eq.(10.27), the penetration distance is
x_rho = 3.64*sqrt(alpha*t) //[m]
