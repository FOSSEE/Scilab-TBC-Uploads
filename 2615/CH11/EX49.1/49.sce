clc
//initialisation of variables
q=29.43//kg
v=10//m/sec
p=2//kg
g=9.81//m/sec
//CALCULATIONS
a=q/g//kg*m^-1 sec^2
V=v-a*(p/a)//m/sec
//RESULTS
printf('The velocity of the body three secounds after =% f m/sec',V)
