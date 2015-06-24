//Find the voltage-gain ratio V2/V1
//Solved Example 1.15 page no 23
clear
clc
printf("\nFind the voltage-gain ratio V2/V1")
//Let V=V2/V1
RL=2000
h11=100 //ohm
h12=0.0025 //ohm
h21=20 //ohm
h22=0.001 //mS
V=1/(h12-(h11/h21)*((1/RL)+h22))
printf("\n The value of V2/V1=%0.1f",V)
