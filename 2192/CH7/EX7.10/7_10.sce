clc,clear
printf('Example 7.10\n\n')

CE_Cu=32.8; CE_H=1//chemical equivalents
ECE_H =0.01044*10^-3    //electrochemical equivalents
ECE_Cu = ECE_H * (CE_Cu/CE_H) 

//copper
T=1*60*60 //time in seconds
I=40
m=ECE_Cu *I*T

printf('Weight of deposited copper = %.2f grams',m)
