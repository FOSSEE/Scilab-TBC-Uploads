
clc
//initialisation of variables
P=12.5 //mole air
n=47.0 //mole fuel
p1=1//mole air
a=28.95 //mole air
m=114.2//mole fuel
//CALCULATIONS
AF=P+n/p1//mole air/mole fuel
A=AF*a/m//lbm air /lbm fuel
//RESULTS
printf('The theoretical air fuel ratio for the combustion of octane=% f lbm air/mole fuel',A)
