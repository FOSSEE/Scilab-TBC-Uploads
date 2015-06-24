clc
clear
printf("Example 10.14 | Page number 363 \n\n");
//Find the flow rate of feed water into the heater.
//Given data
m1 = 0.2 //kg/s
p = 4 //bar
//Solution
//From superheated steam table
h1 = 2752.8 //kJ/kg
h2 = 209.31 //kJ/kg
h3 = 604.73 //kJ/kg

m2 = (m1*h1-m1*h3)/(h3-h2) //kg/s
printf("The flow rate of feed water into the heater = %.3f kg/s",m2)
