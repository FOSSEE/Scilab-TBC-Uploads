
clc
//initialisation of variables
v1=200 //ft/sec
v2=600//ft/sec
Q=-30000//Btu/hr
m=10000//lbf/hr
p1=300//lbf/in62
p2=15//lbf/in^2
T1=700//F
T2=778//F
g=32.17//lbm-ft/lbf-sec^2
Q1=100//percent
hi=1368.3//Btu/lbm
g1=16//feet
g2=10//feet
he=1150.8//Btu/lbm
w1=208100//Bt/hr
w2=2545//Btu/hp-hr
a=7.2//lbm
w3=208.1
//CALCULATIONS
V=(v1*v1)/(2*g*T)//Btu/lbm
Zi=(g1*g)/(g*T)//Btu/lbm
V1=(v2)^2/(2*g*T)//Btu/lbm
Ze=g2/T2//Btu/lbm
We1=w1/w2*10//hp
q=Q/m//Btu/lbm
We2=(w3*m)/w2//hp
//RESULTS
printf('The work per pound mass of fluid flowing is found is=% f hp',We2)
