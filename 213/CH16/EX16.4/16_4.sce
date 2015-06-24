//To find coefficient of fluctuation of speed
clc
//Given:
m=36 //kg
k=150/1000 //m
N=1800 //rpm
//Solution:
//Refer Fig. 16.6
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Calculating the value of 1 mm^2 on the turning moment diagram
c=5*%pi/180 //Value of 1 mm^2 on turning miment diagram, N-m
//Calculating the maximum fluctuation of energy
//From the turning moment diagram, maximum energy = E+295, and minimum energy = E-690
deltaE=(285-(-690))*c //N-m
//Calculating the coefficient of fluctuation of energy
CS=deltaE/(m*k^2*omega^2)*100 //%
//Results:
printf("\n\n Coefficient of fluctuation of speed, CS = %.1f %c.\n\n",CS,"%")