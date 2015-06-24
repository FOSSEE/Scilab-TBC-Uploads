clc
//initialisation of variables
a=4//lb
t=140//F
p1=200//psi gage
p2=14.2//psia
w=53.35//lb
t1=460//F
//CALCULATIONS
V=(a*w*(t+t1))/((144)*(p1+p2))//cu ft
//RESULTS
printf('The tank volume=% f cu ft',V)
