clc
//initialisation of variables
h=400//mm
v=540//mm
l=900//mm
q=60/40//sec
a=0.857//sec
//CALCULATIONS
H=h*v/(2*l)//mm
R=H/v//degree
Tb=q-a//sec
V=h/a*60/1000//m/min
V1=h/Tb*60/1000//m/min
//RESULTS
printf('the average speed of workin =% f m/min',V1)
