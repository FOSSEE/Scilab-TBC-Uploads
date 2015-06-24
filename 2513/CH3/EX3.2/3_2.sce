clc
//initialisation of variables
a=37.4//acres
r=2//in
p=30//min
v=3//fps
r1=0.6//in
h=1.0//cfs
p1=50//percent
q=646000//gpd
//CALCULATIONS
R=r*r1*a//cfs
A=R/v//sq ft
D=12*sqrt(4*A/%pi)//in
P=r*r1*q/p1//gpcd
//RESULTS
printf('the per capita storm runoff for a population density=% f gpcd',P)
