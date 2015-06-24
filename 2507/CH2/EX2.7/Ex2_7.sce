clc
clear
printf("Example 2.7 | Page number 41 \n\n");
//Find the mep, in  kPa, and the indicated power in kW.

//Given Data
//four-stroke engine
x = 3 //number of cylinders
y = 1 //engine is single-acting
n = 500 //rev/min 
N = n/2 //cycles/min
D = 0.075 //m //bore length
L = 0.1 //m //stroke length
a = 6*10^(-4) //m^2 //area
l = 0.05 //m //length
S = 2*10^8 //N/m^3 //spring constant

//Solution
p_m = (a/l)*S //Pa //mep

printf("Mean effective pressure, mep{Pm} = %.2f kPa\n",p_m*.001)
A = (%pi/4)*D^2 //m^2

printf("Indicated power{P_ind} = %.2f kW",(x*y)*(p_m*L*A*N)/60000)
