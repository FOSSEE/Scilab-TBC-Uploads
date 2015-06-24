
clc
//initialisation of variables
p=14.7//lb
v=1.0//ft
w=400//psi
n=1/1.3//ft
//CALCULATIONS
P1=p-v//psia
P2=w+p//psia
V=(P2/P1)^n
//RESULTS
printf('The ratio of the volume =% f ',V)
