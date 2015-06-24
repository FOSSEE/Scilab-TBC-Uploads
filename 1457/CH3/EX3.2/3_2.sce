clc
//Initialization of variables
Q=0.5 //cfs
d1=8 //in
d2=4 //in
R=2 //in
theta=45//degrees
//calculations
h=(1-cosd(theta)) //Multiply by r
Aa=2*%pi*h //Multiply by r^2
V=Q/Aa //divide by r^2
aA=0
r=0.167 //ft
V1=V/r^2
dvbydx=V*2/r^3
aB=V1*dvbydx
//results
//The answer varies a bit from the text due to rounding off error
printf("Acceleration at A = %d since flow is steady",aA)
printf("\n Acceleration at B = %d ft/s^2",aB)
