clc
//initialisation of variables
v=2.5//fps
c=0.013//gpd
p=300//gpd
d=50//per care
m=5.20//ft
a=1000//ft
//CALCULATIONS
C=[(%pi*64)/(4*144)]*v*646000//gpd
M=m/a//ft
P=C/p
A=P/d//acres
//RESULTS
printf('the acres will it drain if the population density=% f acres',A)
