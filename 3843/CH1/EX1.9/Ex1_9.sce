// Example 1_9
clc;funcprot(0);
// Given data
t=50;// °F

// Calculation
t_c=(5/9)*(t-32);// °C
T_K=t_c+273;// K
T_R=t+460;// °R
printf("\nt_c=%2.0f°C \nT_K=%3.0f K \nT_R=%3.0f°R",t_c,T_K,T_R);
