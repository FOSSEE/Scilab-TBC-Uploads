
clc
//initialisation of variables
v=400//Btu per lb
t=1698//R
c=0.1715//ft
p=0.24//ft
v1=15//ft
v2=1.414//V
p1=560//R
q=800//ft
h=401600//ft-lb per lb
s=13.63//ft
//CALCULATIONS
T=(v/(1*c))//R
T1=t+T//R
T2=v/(1*p)//R
T3=T1+T2//R
V=v1/v2//ft
T4=T3/(V)^0.4//R
Q=1*c*(T4-p1)//Btu per lb
Q1=q-Q//Btu per lb
W=Q1/q*100//percent
M=h/(s*144)//psia
//RESULTS
printf('The thermal efficiency equal is=% f psia',M)
