
clc
clear
//Input data
CC=(80*10^6)//Capital cost in Rs
L=30//Useful life in years
S=5//Salvage value of the capital cost in percent
i=0.06//Yearly rate of compound interest

//Calculations
A=((100-S)/100)*CC//Difference of capital cost and salvage value in Rs
P=((A*i)/((1+i)^L-1))//The amount of money to be saved annually in Rs

//Output
printf('The amount of money to be saved annually is Rs.%3.0f/-',P)
