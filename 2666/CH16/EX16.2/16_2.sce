clc
//initialisation of variables
p=15//ft
v1=100//F
v2=460//F
t=800//Btu per lb
p1=0.24//ft
v=14.2//psia
r=15//ft
v3=15//ft
v4=3.025//V
c=0.1715//ft
h=560//ft
d=347000//ft-lb per lb
a=13.63//ft
R=53.3//ft
//CALCULATIONS
T=(v1+v2)*(p)^0.4//R
Q=t/(1*p1)//R
T1=T+Q//R
V=v3/v4//ft
T2=T1/(V)^0.4//R
Q1=1*c*(T2-h)//Btu per lb
Qs=t-Q1//Btu per lb
W=1*R*(v1+v2)/(144*v)//cu ft per lb
X=(14/15)*W//cu ft
M=d/(X*144)//psia
//RESULTS
printf('the mean efficive pressure is=% f psia',M)
