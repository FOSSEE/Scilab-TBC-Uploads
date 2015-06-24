clc
clear 
printf("example 5.9 page number 191\n\n")

//to find the surface temperature of earth
T_sun = 5973   //in degree C
d = 1.5*10^13    //in cm
R = 7.1*10^10;  //in cm

T_earth = ((R/(2*d))^0.5)*T_sun;
printf("Temperature of earth = %f C",T_earth-273) 
