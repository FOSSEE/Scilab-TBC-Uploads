clc();
clear;
//Given :
u = 5*10^5; //horizontal velocity in m/s
alpha = 35; // in degrees
E = 200 ;// Electric field in V/m
e = 1.6*10^-19; // electron charge in C
m = 9.12*10^-31; // electron mass in kg
a = (-e*E)/m; // horizontal range in m/s^2
//(a);
z_max = (-(u^2)*(sind(alpha))^2)/(2*a); // maximum penetration in m
//(b)
T = (-2*u*sind(alpha))/a; // Time of flight in s
//(c)
H = (-(u^2)*(sind(2*alpha)))/a; // horizontal range in m
printf("z_max = %.1f mm \n",z_max*10^3);
printf("T = %.2f x 10^-8 s  \n",T*10^8);
printf("H = %.1f  mm",H*10^3);
