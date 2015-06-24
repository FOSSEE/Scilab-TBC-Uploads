clc
// initialization of variables
clear
b=30 // cm
h=30 //cm
n=6
A=36 //cm^2
ss_s=1500 //kg/cm^2
ss_c=60 //kg/cm^2
Er=15 // Elasticity ratio
// calculations
L=A*Er*ss_c+(b*h-A)*ss_c
// results
printf('The safe load is %d.kg',L)
