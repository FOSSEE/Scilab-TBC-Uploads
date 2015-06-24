//Ex:56
clc;
clear;
close;
r_a=35000+6360;//apogee in km
r_p=500+6360;//perigee in km
A=(r_a+r_p)/2;//Semi_major axis in km
a=A*1000;//Semi_major axis in m
G=6.67*10^(-11);//Gravitation const in N-m^2/kg^2
m=5.98*10^24;//mass of earth in kg
u=G*m;
t=2*(3.14)*sqrt((a^3)/u);
printf("The orbital time period=%d s",t);
printf("\n The orbital time period is 10 hours 20 minutes");
x=2/(r_a*1000);
y=1/a;
v_a=sqrt(u*(x-y));// velocity at apogee in m/s
c=2/(r_p*1000);
v_p=sqrt(u*(c-y));// velocity at perigee in m/s
printf("\n The velocity at apogee=%d m/s",v_a);
printf("\n The velocity at perigee=%f km/s",v_p/1000);