clc
//initialisation of variables
p=14.0//psia
t=140//F
r=6//ratio
w=1//ratio
Q=1300//Btu per lb
t1=1229//R
c=0.24//ft
w1=600//ft
f=517500//ft-lb per lb
v=15.86//ft
v1=2.64//cu ft
//CALCULATIONS
T=Q/(w*c)//R
T1=t1+T//R
T2=T1/(r)^0.4//R
Q1=w*(c)*(T2-w1)//Btu per lb
Qs=Q-Q1//Btu per lb
W=Qs/Q*100//percent
V=v*(T2/w1)//cu ft
M1=f/((V-v1)*144)//psia
//RESULTS
printf('the cylinder volume is=% f psia',M1)
