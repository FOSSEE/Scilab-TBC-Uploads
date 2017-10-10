//Chapter 7, Example 7.5, Page 199
clc
clear
// Activity of the sample
lambda = 7.466*10**-5
m = 2
Na = 0.6022*10**24
A = 55
sigma  = 13.3*10**-24
delta = 10**13
t = 120
Activity= lambda*(m*Na/A)*sigma*delta*t
printf("Activity = %e Bq\n",Activity)

//Answers may vary due to round off error
