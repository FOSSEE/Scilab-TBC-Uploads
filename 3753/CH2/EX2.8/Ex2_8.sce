//Example number 2.8, Page number 2.35


clc;clear;close

// Variable declaration
C=1500 // in m
Df=267// unitless
f=2*10**6
theta=0*%pi/180          // degrees

// Calculation
V=(C*Df)/(2*f*cos(theta)) // in m/s

// Result
printf("Velocity of blood flow = %0.4f m-s^-1",V)
