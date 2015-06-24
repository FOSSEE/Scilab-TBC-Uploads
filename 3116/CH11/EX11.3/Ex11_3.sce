
//page no 421
clc
// Given that
T=800+273;  // Ambient temperature  in K
//stress is 140 MPa
L_M=24*10^3 // Larson - miller parameter 
//From Graph of Fig. 8.32 Larson-Miller Parameter is deduced
printf("\n Design Example 11.2\n")
t=10^((L_M/T)-20)
printf("\n Time to rupture for a component is %d hours(%.1f days)\n",t,t/(24))
// Answer in book is 233 hours. it is because of approximation at intermediate stage

