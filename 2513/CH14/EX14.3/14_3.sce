

clc
//initialisation of variables
v=2.5//fps
q=0.873//cfs
s=5.20//percent
a=0.252//ft
r=0.684//ft
r1=1.46//ft
v1=0.776//ft
q1=0.196//ft
n=0.78//ft
R=0.939//ft
//CALCULATIONS
V=v1*v//fps
Q=q1*q//cfs
R1=r1*s//percent
Vs=R*v//ft
N=n*Vs//fps
Qs=a*R*q//cfs
N1=n*Qs//cfs
//RESULTS
printf('the required grades and associated velocity and rates=% f cfs',V)
printf('the depth and a grade=% f cfs',Q)
printf('the self cleaning flow=% f cfs',N1)
