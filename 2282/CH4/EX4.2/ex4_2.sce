// Example 4.2, page no-122
clear
clc

m=4330      //initial mass of the satellite
i=290       //specific impulse of a propellant
del_v=-100   //velocity increment
g=9.807     // acceleration due to gravity

m1=m*(1-exp(del_v/(g*i)))
printf("Mass of propellant necessary to be burnt is, m= %.0fkg",ceil(m1))
