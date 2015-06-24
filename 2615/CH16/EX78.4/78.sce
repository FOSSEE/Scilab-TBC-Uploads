clc
//initialisation of variables
N=7.4//kw
n=N*1.36//hp
n1=1500//rpm
q=716.2//mm
m1=2/15//kg-m
d=400//rpm
m=35812//kg-m
//CALCULATIONS
Mt=q*(n/n1)//kg-m
P=2*m/d//kg
//RESULTS
printf('the effictive pull=% f kg',P)
