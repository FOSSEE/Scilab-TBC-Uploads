clc
//initialisation of variables
p1=1000//ft
p2=50//ft
g=20//ft/mile
v=5280//ft
q=7.5*10^-6//ft
t=60//F
k=2835//ft/days
p=7.5//ft
//CALCULATIONS
S=g/v//ft
W=k*(g/v)//ft/day
Q=W*p1*p2*q//mgd
P=k*p//ft
P1=P*p2//mgd
//RESULTS
printf('the velocity of flow =% f mgd',Q)
printf('the standard coefficient pf permeability=% f mgd',P1)
