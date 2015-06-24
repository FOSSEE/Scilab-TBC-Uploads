
clc
clear
//Input data
i=4000//Initial investment in Rs crore
Y=4//Period in years
A=1200//Amount added in Rs crore
B=400//Amount paid from 5th year onwards to the 12th year in Rs crore
a=5//5th year
b=12//12th year
y=30//Period in years
C=600//Salvage value in Rs crore
I=0.1//Interest rate 

//Calculations
X=(1/(1+I))//X value for calculations
PW=(i+(A*X^Y)+((B/I)*X^b*((I+1)^b-1))-((B/I)*X^a*((I+1)^a-1))-(C*X^y))//Present worth of the payments at the time of commissioning in Rs. crores

//Output
printf('Present worth of the payments at the time of commissioning is Rs.%3.2f crores',PW)
