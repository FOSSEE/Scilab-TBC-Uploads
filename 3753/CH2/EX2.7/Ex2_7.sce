//Example number 2.7, Page number 2.34


clc;clear;close

// Variable declaration
m=1 // unitless
lamda_l=6000*10**-10 // in m
theta=0.046*(%pi/180) // radian
n=2*10**6// unitless

// Calculation
lamda_s=(m*lamda_l)/(sin(theta)) // in m
v=n*lamda_s // in m/s

// Result
printf("Ultrasonic wavelength,lamda s =%0.2e m",(lamda_s))
printf("\nVelocity of ultrasonic waves in liquid = %0.f ms^-1",v)
// Answer varies due to rounding of numbers
