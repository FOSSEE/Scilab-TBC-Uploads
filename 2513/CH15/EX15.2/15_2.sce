clc
//initialisation of variables
v=2.5//fps
N=0.015//fps
a=(40+27)//in
b=(40*27+27*19)/a
c=0.440//cfs
w=49*0.09/100//cfs
g=0.008//percent
Q=0.82//cfs
r=0.795//cfs
t=2.35*1.16//fps
d1=113.20-113.03//ft
d2=12//ft
//CALCULATIONS
R=r/Q//cfs
D=g*r//in
D2=d1*d2//in
//RESULTS
printf('The required capacity and find the slope size and hydraulic characteristics of the system=% f in',D2)
