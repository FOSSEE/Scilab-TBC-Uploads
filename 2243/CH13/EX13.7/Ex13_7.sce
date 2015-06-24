clc();
clear;
//Given :
m = 9.12*10^-31;// electron mass in kg
e = 1.6*10^-19;// electron charge in C
u = 5*10^7; // electron speed in m/s
alpha = 30; // angle in degrees
d = 0.5; // diameter in m
//(a)
//helix radius  = (m*u*sin(alpha))/B*e 
r = d/2; // radius in m
B = (m*u*sind(alpha))/(r*e); // magnetic flux density in Wb/m^2
//(b)
T = (2*%pi*m)/(B*e);// time in s
//(c)
p = T*u*cosd(alpha); // pitch in m
printf("B = %.2f x 10^-3 Wb/m^2 \n",B*10^3);
printf("T = %.2f x 10^-8 s  \n",T*10^8);
printf("p = %.2f m",p);
