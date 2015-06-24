// Caption:Finding internal torque
clear;
close;
clc;
V_a=122.3;
I_two= V_a/sqrt(5.07^2+0.699^2);//load component of stator current
T=3*23.9^2*4.8/125.6;//internal torque
P=3*23^2*4.8*.97;//internal power

// at maximum torque point
s_max=0.144/0.75;
speed=(1-s_max)*1200;//speed in r/min
T_max=(0.5*3*122.3^2)/(125.6*(0.273+0.750));//maximum internal torque

T_start=3*150.5^2*0.144/125.6;//starting torque in N-mFinding stator current and efficiency