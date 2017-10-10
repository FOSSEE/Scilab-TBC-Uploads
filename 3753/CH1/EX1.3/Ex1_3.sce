//Example number 1.3, Page number 1.36

clc;clear;close


//Variable declaration
w=0.02   // in m   
n=1
lamda=6.56*10**-7 // in m
theta=(18+(14/60))*%pi/180 // in radian

//Calculation
N=(w*sin(theta))/(n*lamda) // no. of lines

//Result
printf("Total number of lines n the grating=%d",round(N))
//Answer varies due to rounding of number"
