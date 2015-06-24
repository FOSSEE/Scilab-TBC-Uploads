// Example 4.3, page no-123
clear
clc

m=2950      //initial mass of the satellite
F=450       //required thrust
T=10        // thrust for time period
i=300       //specific impulse of a propellant
g=9.807     // acceleration due to gravity

mi=F*T/(i*g)
printf("Mass of propellant that would be consumed is, m=%.2fkg",mi)
