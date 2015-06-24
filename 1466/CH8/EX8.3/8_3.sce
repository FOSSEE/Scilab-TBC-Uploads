
clc
//initialisation of variables
w=20//tons
d=0.5
w1=57.2//lb/ft^2
vs=0.0205//ft-sec
pi=22/7
l=1000//ft
g=32.2//ft/sec^2
//CALCULATIONS
Q=w*2240/(w1*3600)
v=(Q*4)/(pi*d*d)
Re=v*d/vs
k=8*(27.1)^-1
i=k*v*v*4/(d*g)
hf=i*l
hp=w*hf*2240/(3600*550)
//RESULTS
printf (' horse power required= %.2f ',hp)
