//Nonsteady-State Diffusion Time Computation II

clear;
clc;

printf("\tExample 5.3\n");

D500=4.8*10^-14;     //Diffusion coefficient at 500 C

D600=5.3*10^-13;     //Diffusion coefficient at 600 C
t600=10;             //Time in hours to diffuse

t500=D600*t600/D500;

printf("\nTime to diffuse at 500 C is %.1f h\n",t500);

//End