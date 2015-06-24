//To find total load
clc
//Given:
P=120*1000 //W
d=250/1000, r=d/2 //m
N=650 //rpm
phi=20 //degrees
//Solution:
//Calculating the angular speed of the gear
omega=2*%pi*N/60 //rad/s
//Calculating the torque transmitted
T=P/omega //N-m
//Calculating the tangential load on the pinion
FT=T/r //N
//Calculating the total load due to power transmitted
F=FT/(cosd(phi)*1000) //kN
//Results:
printf("\n\n Total load due to power transmitted, F = %.3f kN.\n\n",F)