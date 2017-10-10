clc
//initialisation of variables
a=5//cm
b=25//cm
s=8.5//bars
r=40//cpm
T=460//F
p2=77//ft
p1=68//ft
T1=273//F
T2=273//F
t=20//c
d=1.01*10^5//N/m^2
q2=61024//in^3/m^3
q3=1/1728//ft^3/in^3
p=14.7//psi
//CALCULATIONS
Q=%pi*((a*10^-2)^2/4)*(b*10^-2)*(r)*1000//m^3/min
Q2=((s*10^5+d)*Q)/d*0.001//m^3/min
Q3=Q2*(t+T1)/(b+T2)//m^3/min free air
Q4=Q*q2*q3*0.001//cfm
Q5=(s*14.5+p)*(Q4)/p//cfm free air
Q6=Q5*(p1+T)/(p2+T)//cfm free air
//RESULTS
printf('The air consumption in units of free air is=% f cfm free air',Q6)
