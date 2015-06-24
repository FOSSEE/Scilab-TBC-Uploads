clc
//initialisation of variables
h=200//r p m
h1=50//i h p
P4=33.4//lb/in^2
W=9000//ft lb
x=33000//ft.lb
p=1728//ft/lb
//CALCULATIONS
w=h1*x/100//ft lb
T=w/W//ft^3
V =13/14*T//ft^3
D=((V*p*8)/(3*%pi))^(1/3)//in
//RESULTS
printf('The diameter of the cylinder of a single acting and swept volume=% f in',D)
