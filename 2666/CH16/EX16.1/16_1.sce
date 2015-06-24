clc
//initialisation of variables
p=14.2//psia
t=140//F
r=6//ratio
p1=1300//Btu
h1=53.3//ft
t1=460//F
p2=14.0//ft
w=0.1715//ft
w1=172.0//ft
v=2.64//cu ft per lb
v1=15.86//cu ft per lb
h2=600//ft
x1=517500//ft-lb per lb
//CALCULATIONS
V=1*h1*(t+t1)/(144*p2)//cu ft per lb
P=p2*(r)^1.4//psia
P1=(t+t1)*r^0.4//R
V1=V/r//cu ft per lb
Q=p1/w//R
T=P1+Q//R
P2=w1*(T/P1)//psia
T1=T/(r)^0.4//R
P3=P2/(r)^1.4//Psia
W=1*w*(T1-h2)//Btu per lb
Q=p1-W//Btu per lb
W1=Q/p1*100//percent
E=(1-(1/(r)^0.4))*100//percent
M=x1/((v1-v)*144)//psia
//RESULTS
printf('The mean efficiency pressure=% f psia',M)
