
clc;
clear;
//Example 2.49
//Given
k=300    //W/(m.K)
h=20    //W.(sq m.K)
P=0.05    //[m]
A=2    //[sq cm]
A=A/10000    //[sq m]
T0=503    //[K]
T_inf=303    //[K]
theta_0=T0-T_inf    //[K]
m=sqrt(h*P/(k*A))
//CASE 1:  6 Fins of 100 mm length
L1=0.1    //Length of fin in [m]
Q=sqrt(h*P*k*A)*theta_0*tanh(m*L1)    //[W]
//For 6 fins
Q=Q*6    //for 6 fins [W]
//CASE 2:  10 fins of 60 mm length
L2=60    //[mm]
L2=L2/1000    //[m]
Q2=sqrt(h*P*k*A)*theta_0*tanh(m*L2);    //[W]
Q2=Q2*10    //For 10 fins
printf("As,Q for 10 fins of 60 mm length( %f W) is more than Q for 6 fins of 100 mm length (%f W).\n The agreement-->10 fins of 60 mm length is more effective",Q2,Q); 
