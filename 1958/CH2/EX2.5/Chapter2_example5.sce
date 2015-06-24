clc
clear
//Input data
k=50//Spring force constant in N/m
x=-0.02//Length of compression in m

//Calculations
W=(1/2)*k*(x)^2//Work done by the spring in J

//Output
printf('Work done by the spring when the block comes from the compressed position to the equilibrium position is %3.2f J',W)
