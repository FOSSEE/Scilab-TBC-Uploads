//Example 5.8, Page number 5.30

clc;clear;close

// variable declaration
V=2.405//unitless
lamda=1.3 // in m
N_a=0.05//unitless

// Calculations
a_max=(V*lamda)/(2*%pi*N_a) // in m

// Result
printf("Maximum core radius = %.2f micro-m",(a_max))

