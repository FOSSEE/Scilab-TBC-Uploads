clc
//initialisation of variables
p1=100//ln/in^2
p2=2.5//lb/in^2
p3=20//lb/in^2
d=0.75//lb
p=0.5//lb
r=16//in
p4=p1/r//lb/in^2
P5=50//lb/in^2
W1=13960//ft/lb
W2=19040//ft/lb
T=33000//ft/lb
v=4.43//ft^3
v1=v*d//ft^3
W3=T*v1//ft/lb
Hp=3416//ft/lb
Lp=3416//ft/lb
//CALCULATIONS
W=Lp*v1//ft lb
//RESULTS
printf('The thermal efficiency of a compound steam and work done=% f ft lb',W)
