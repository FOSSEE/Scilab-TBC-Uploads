clear
clc
//initialisation of variables
V= 150 //ft^3/sec
A1= 750 //r.p.m
di= 21 //in
do= 30 //in
v= 50 //ft/sec
A= 70 //degrees
w= 4//in
p= 30 //per cent
p1= 25 //per cent
sv= 12.8 //ft^3/lb
g= 32.2 //ft/sec^2
//CALCULATIONS
u= A1*2*%pi*di/(24*60)
u1= A1*2*%pi*do/(24*60)
f1= V/(%pi*(do/12)*(1/3))
w1= u1-f1*cotd(A)
v1= sqrt(f1^2+w1^2)
P= (u1^2+v^2-(f1^2/(sind(A))^2))/(2*g)
h= 30*v1^2/(100*2*g)
Nh= v1^2/(20*2*g)
Prt= P+Nh
W= u1*w1/g
e= Prt*100/W
Power= Prt*V/(sv*550)
//RESULTS
printf('Total pressure rise = %.1f ft of air',Prt)
printf('\n manometric efficiency = %.1f percent',e)
printf ('\n Power = %.2f hp ',Power)

//The answer is a bit different due to rounding off error in textbook

