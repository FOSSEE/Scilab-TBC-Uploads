//Example 5.3.1
//Calculate the pulse rate for the link
//Variables
clc
clear
Bocc = 100000.00
alpha = 0.5

//Result
Rs = Bocc/(1 + alpha)
printf("The correct symbol rate is %f symbols/sec",Rs)
