//Rupture Lifetime Prediction

clear;
clc;

printf("\tDesign Example 8.2\n");

T=800+273;  // Temperature in K

//stress is 140 MPa
//From Graph of Fig. 8.32 Larson-Miller Parameter is deduced
L_M=24*10^3;

t=10^((L_M/T)-20);

printf("\nTime to rupture is : %d hours\n",t);

//End