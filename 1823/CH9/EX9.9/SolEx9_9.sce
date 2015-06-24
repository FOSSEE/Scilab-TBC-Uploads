//Find the regulated output vo in terms of VZ. (b) Given a specific Zener diode and the values of RS and R1
//Example 9.9 page no 272
clear
clc
Aol=-10^4
Rl=1
Rf=10
Rd=1
Av=(Aol/(1+(Rl/Rf)*(1-Aol)+(Rl/Rd)))
printf("\n The value of Av=%0.3f ",Av)
