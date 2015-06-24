clc
//initialisation of variables
p=20//in
l=100//in
r=120//r.p.m
v=3.5//in
l2=1//in
l3=1/8//in
v1=1.44//umega in/sec
//CALCULATIONS
V=p*(1.06/1.166)//umega in./sec
R=(V/v1)//umega in/sec
//RESULTS
printf('The ratio of velocity of the piston to the velocity=% f umega in/sec',R)
