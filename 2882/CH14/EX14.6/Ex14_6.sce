//Tested on Windows 7 Ultimate 32-bit
//Chapter 14 Operational Amplifiers Pg no. 425 and 426
clear;
clc;

//Given

V1=-10.8;//output at time instant t1 in volts
V2=10.8;//output at time instant t2 in volts
t2_t1=2D-6;//time gap between t1 and t2 in seconds

//Solution

SR=(V2-V1)/t2_t1/10^6;//slew rate in Volts/micro-seconds
printf("Slew Rate S.R. = %.1f V/μS",SR);
