//Example 18// Ch 3
clc;
clear;
close;
// given data
E = 250; //electric field in V/m
r1 = 0.3*10^-3//intial diameter of cloud in meters
k = 1.38*10^-23;//in m2 kg s-2 K-1
T = 293; //in kelvin
e = 1.6*10^-19;// in couloumb
z = 0.05;//drift distance in meters
r = (6*k*T*z)/(e*E);//diameter before drift
printf("diameter before drift %e m \n",r)
r2 = sqrt (r1^2 + r );//diamter after drifting a distance
printf("diameter after drift %e m \n",r2)
// round off value calculated for r and r2
