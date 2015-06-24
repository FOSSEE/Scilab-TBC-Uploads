clc
clear

//input data
R0=6341.6*10^3 //radius of earth at mean sea-level in m
g=9.809 //acceleration due to gravity in m/s^2
Z1=0 //altitude at sea-level in m
Z2=300*10^3 //altitude above sea-level in m

//calculation
uorb1=R0*sqrt(g/(R0+Z1)) //orbit velocity of a rocket at mean sea level in m/s
uesc1=sqrt(2)*uorb1 //escape velocity of a rocket at mean sea level in m/s
uorb2=R0*sqrt(g/(R0+Z2)) //orbit velocity of a rocket at an altitude of 300 km in m/s
uesc2=sqrt(2)*uorb2 //escape velocity of a rocket at an altitude of 300 km in m/s

//output 
printf('(A)orbit and escape velocities of a rocket at mean sea level are %3i m/s and %3i m/s\n (B)orbit and escape velocities of a rocket at an altitude of 300 km are %3.1f m/s and %3.2f m/s',uorb1,uesc1,uorb2,uesc2 )
