//To find inertia force
clc
//Given:
D=175/1000, L=200/1000, r=L/2, l=400/1000 //m
N=500 //rpm
mR=180 //kg
//Solution:
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Analytical method:
//Calculating the ratio of lengths of connecting rod and crank
n=l/r
//Calculating the inertia force
FI=mR*omega^2*r*(cosd(theta)+cosd(2*theta)/n)/1000 //kN
//Results:
printf("\n\n Inertia force, FI = %.2f kN.\n\n",FI)