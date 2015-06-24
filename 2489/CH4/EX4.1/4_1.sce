clc
//Intitalisation of variables
clear
v= 240 //ml
p= 1.25 //atm
p1= 0.75 //atm
n= 2
//CALCULATIONS
v1= v*p/p1
dv= v1-v
V= n*v1
//RESULTS
printf ('Increase in volume = %.f ml',dv)
printf ('\n Final volume = %.f ml',V)
