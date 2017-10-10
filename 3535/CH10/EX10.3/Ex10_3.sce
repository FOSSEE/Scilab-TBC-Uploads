//Chapter 10, Example 10.3, Page 282
clc
clear
// Find the probability
P = exp(-6.85*10**-4*368)
Pnl = 1/(1+(578*6.85*10**-4))
printf("Fast-neutron nonleakage probability = %f \n",P)
printf(" Thermal-neutron nonleakage probability = %f \n",Pnl)
// Answer may vary due to round off error
