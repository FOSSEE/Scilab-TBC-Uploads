//Example 16.11, page 624
clc
E=200*1.6*10^-13//j/neutron
E=10^-11//Rounding off
p=E/(10^-3)
P=10^8//in watt
N=P/p
printf("\n The number of free electron present is %e",N)