clc
//initialisation of variables
p=3.74//ft/lb
p1=2.48//ft/lb
v=5.7//ft lb
Cv=0.21//ft/lb
P=440//lb/in^2
P1=160//lb/in^2
P2=14//lb/in^2
T=25//degree C
T1=100//F
vs=(%pi*(p1)^2/4)*(p/1728)//ft^3
vc=5.7//ft^3
v1=4.7//ft^3
v2=vs/v1//ft^3
v3=0.01273//ft^3
T2=298//F
//CALCULATIONS
W=(P2*144*v3)/(T2*T1)//lb
T3=[(P1*144*1)/(P2*144*7)*T2]//Degree C
T4=(P/P1)*T3//Degree C
H=W*Cv*(T4-T3)//C.H.U
//RESULTS
printf('The heat supplied during explosion=% f C.H.U',H)
