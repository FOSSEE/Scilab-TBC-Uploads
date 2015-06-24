clc
//initialisation of variables
w=20//ft
r=3//ft a day
g=500//ft
g1=1000//ft
h=7.5/1440//ft
p=7.5/1000000//ft
r1=2//ft a day
//CALCULATIONS
W1=w*g1*r*h//gpm
W2=w*g1*r1*r*p//mgd
//RESULTS
printf('the ground water laterally =% f gpm',W1)
printf('the water from both sides=% f mgd',W2)
