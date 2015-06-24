clc
clear
printf("Example 9.2 | Page number 253 \n\n");
//Find the final volume
//Given data
p1 = 10 //bar //inital pressure
T1 = 273+227 //K //inital temperature
v1 = 0.01 //m^3 //initial volume
p2 = 1 //bar //final pressure
T2 = 273+27 //K //final temperature
//Solution
v2 = (p1/p2)*(T2/T1)*v1 //m^3 //final volume
printf("Final volume = %.2f m^3",v2)
