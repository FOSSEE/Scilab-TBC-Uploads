clc
clear 
printf("example 2.13 page number 75\n\n")

//to find the boiling point of solution

w_glucose=9    //in gm
w_water=100    //in gm
E=0.52;
m=90/180;    //moles/1000gm water

delta_t=E*m;
boiling_point=100+delta_t;

printf("boiling_point of water = %f degreeC",boiling_point)
