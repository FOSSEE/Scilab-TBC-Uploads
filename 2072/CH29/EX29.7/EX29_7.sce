//Chapter 29
clc
//Example 7
//given
T_half=3.01*10^9 //half life time in min
lambda=0.693/T_half
R=200 // in decay/min
R0_=15 //decay rate in decay/min.g
m=50 //weight of carbon
R0=R0_*m //in decay/min
t1=-(log(R/R0)/lambda) //im min
t=t1/525949
disp(t,"Age of the skeleton in years is")



