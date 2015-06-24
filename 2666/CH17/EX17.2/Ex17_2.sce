

clc
//initialisation of variables
p1=6//in
p2=4//in
r1=7//ratio
r2=1//ratio
s=3600//rpm
v=80//percent
v1=0.693//percent
h1=4//in
h2=5//in
f=20200//Btu per lb
g=1728//ft in
q=14.7//ft
R=53.3//ft
t=520//F
t1=0.302//percent
t2=42.4//ft
w1=28.97//ratio
w2=15.12//lb air per lb fuel
t3=778//R
//CALCULATIONS
V=(h1^2)*(%pi/h1)*(h2)/g*(p1/2)*(s)*(v1)//cu ft per min
W=(144*q*V)/(R*t)//lb per min
M=W/w1//lb per min
H=M*f//Btu per min
I=H*t1/t2//cu ft
V1=((w2)*(R)*(t))/(144*q)//cu ft
H1=f/V1//Btu
D=H1*v1//Btu
W1=D*t1*t3//ft
M1=W1/144//psi
//RESULTS
printf('The indicated mean effictive pressure=% f psi',M1)
