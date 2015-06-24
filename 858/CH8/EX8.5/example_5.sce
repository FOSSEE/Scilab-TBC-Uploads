clc
clear 
printf("example 8.5 page number 341\n\n")

//to find viscosity of oil 
diameter=0.6;     //in m
disk_distance=1.25*10^-3;    //in m
speed=5;      //revolutions/min
torque=11.5;  //in Joules

//we know that torque= pi*omega*viscosity*radius^4/2*disc_distance
viscosity=(2*disk_distance*torque)/(3.14*(10*3.14)*(diameter/2)^4);
printf("viscosity = %f Pa-s",viscosity)
