
clc
//initialisation of variables
h=2368000//Btu per mol
t=77//F
u=104//ft
v=18*991.3//Btu
d=85//ft
p=640//F
q=12.5//ft
h1=1066//ft
f=9//ft
a=8//ft
r=118//ft
g=13.5//ft
//CALCULATIONS
U=u-v//Btu per mol of water
F=1*p+q*d+g*h1+a*r+a*h1+f*U+h//Btu per mol
//RESULTS
printf('the fuel the oxygen =% f Btu per mol',F)
