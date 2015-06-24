clc
//initialisation of variables
q=1.0//cfs
g=2.0//percent
g1=5.6//percent
r=0.015//cfs
w=90//percent
Q=10*0.9*q//ft
p=0.10//ft
h=(3.48*g1^1/3)//ft
d=p^2/3*100//ft
//CALCULATIONS
D=h*d//in
//RESULTS
printf('The maximum depth of flow in the gutter=% f in',D)
