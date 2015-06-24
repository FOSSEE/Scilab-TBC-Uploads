//Example 16-5,Page No - 661

clear
clc

T = 9.2
theta = 20
sin20 = 0.342

D_nautical = T/12.36
D_statute =D_nautical*0.87
A = D_statute*0.342


printf('\nThe line of distance to the aircraft in \nthe statute miles %.3f ',D_statute)
printf('\n\nThe altitude of the aircraft is %.2f mi and in feet it is 1161.6',A)
