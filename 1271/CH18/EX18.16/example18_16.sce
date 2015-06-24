clc 
// Given that
H = 5e3 // coercivity in A/m
l = 0.10 // length of solenoid in m
n = 50 // no. of turns 
// Sample Problem 16 on page no. 18.27
printf("\n # PROBLEM 16 # \n")
printf("Standard formula used \n ")
printf(" H=N*i \n")
N = n / l
i = H / N
printf("\n Current in solenoid should be %d A.",i)
