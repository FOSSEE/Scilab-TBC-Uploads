clc();
clear;
// To calculate the minimum uncertainity in velocity
delta_x=10^-8;   //length of box in m
h=6.626*10^-34;
m=9.1*10^-31;   //mass in kg
delta_v=h/(m*delta_x);    //uncertainity in m/sec
delta_vk=delta_v*10^-3;   //uncertainity in km/sec
printf("minimum uncertainity in velocity is %f m/sec",delta_v);
printf("minimum uncertainity in velocity is %f km/sec",delta_vk);
