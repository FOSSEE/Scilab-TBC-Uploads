clc
//Example 15.4
//Calculate the time taken by water in a long pipe to reach its steady state velocity
//let (new)*t/r0^2 be denoted by y
y=0.05//dimentionless
r0=0.077//m
mew=1//Pa.s
rho=1000//Kg/m^3
new=mew/rho//m^2/s
t=y*r0^2/new//s
printf("the time taken by water in a long pipe to reach its steady state velocity is % f seconds",t);