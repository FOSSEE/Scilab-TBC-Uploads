clc
//initialisation of variables
v=90/60//m/sec
d=80//mm
p=600//kg
w=90//m/min
R=0.12//kg
//CALCULATIONS
N=(p*v)/(75)//hp
M=p*0.04//kg-m
Q=M/R//kg
//RESULTS
printf('the cutting speed power=% f kg',Q)
