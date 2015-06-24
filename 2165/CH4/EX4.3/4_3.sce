clc
//initialisation of variables
h1=180//lb/in^2
h2=3//lb/in^2
r1=60//percent
r2=90//percent
p3=100//lb/in^2
p4=10//lb/in^2
v1=4.4//ft^3/lb
v2=2*v1//ft^3
p=44//lb/in^2
x2=0.95//ft^3
s1=165.9//lb
s2=89.1//lb
L1=493.4//lb
H=(s1-s2)+L1//C.H.U/lb
W=65.8//C.H.U/lb
//CALCULATIONS
R=W/H*100//percent
//RESULTS
printf('The rankine efficiency of the engine=% f percent',R)
