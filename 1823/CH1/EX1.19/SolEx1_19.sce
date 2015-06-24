
//Find (a) the average value of the current and (b) the rms value of the current..
//Solved Example 1.19 page no 25
clear
clc
printf("\nFind (a) the average value of the current and (b) the rms value of the current.")
T=1
I0=(1/T)*(4*(T/2)+1*(T/2))//A
printf("\nI0=%0.1f A",I0)
I=(2*(1/T)*((4^2)*(T/2)+(1^2)*(T/2)))^(1/2)//A
printf("\nI=%0.2f A",I)
