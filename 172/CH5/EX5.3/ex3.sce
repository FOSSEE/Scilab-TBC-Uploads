//example 3
//analysis of energy transfer
clear
clc
g=9.806 //acceleration due to gravity in m/s^2
m=10 //mass of stone in kg
H1=10.2 //initial height of stone above water in metres
H2=0 //final height in metres
dKE1=-m*g*(H2-H1) //change in kinetic energy when stone enters state 2 in J
dPE1=-1 //change in potential energy when stone enters state 2 in J
printf("\n hence,when stone is about to enter state 2, dKE = %.3f J. \n",dKE1)
printf("\n and dPE = %.3f J. \n",dPE1)
dPE2=0 //change in potential energy when stone enters state 3 in JQ2=0 //no heat transfer when stone enters state 3 in J
W2=0 //no work done when stone enters state 3 in J
dKE2=-1 //change in kinetic energy when stone enters state 3
dU2=-dKE2 //change in internal energy when stone enters state 3 in J
printf("\n hence,when stone has just come to rest in the bucket i.e. state 3, W=0, dPE=0, dKE1 = %.3f J. \n",dKE2)
printf("\n and dU = %.3f J. \n",dU2)
dKE3=0 //change in kinetic energy when stone enters state 4
dPE=0 //change in potential energy when stone enters state 4 in J
W3=0 //no work done when stone enters state 4 in J
dU3=-1 //change in internal energy when stone enters state 4 in J
Q3=dU3 //heat transfer when stone enters state 4 in J
printf("\n hence,when stone has entered state 4, dPE=0, W3=0,dKE=0, dU= %.3f J. \n",dU3)
printf("\n and Q3= %.3f J. \n",Q3)