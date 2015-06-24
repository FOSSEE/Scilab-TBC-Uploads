clc
//initialisation of variables
m=32//lb
n=14//lb
c=56//lb
h=8//lb
p=200//psi
t=130//F
M=7.5//lb
B=1545//lb
t1=460//F
//CALCULATIONS
V=(M*B*(t+t1))/(144*(14.5+p))//cu ft
//RESULTS
printf('The tank volume required= % f cu ft',V)
