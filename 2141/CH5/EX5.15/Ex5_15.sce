
clc
//initialisation of variables
v=2 //ft^3
u1=7.259//lbm
u2=9.403 //lbm
p1=60 //lbf/in^2
t=300 //f
M=0.275 //lbm
h1=1181.6//btu
h2=1283.0 //Btu
t1=144//in^2/ft^3
T=778//F
W=6.5//Btu
//CALCULATIONS
Q1=M*(h2-h1)//Btu
U=Q1-W //Btu
v1=h1-(p1*t1*u1/T)//Btu/lbm
v2=h2-(p1*t1*u2/T)//Btu/lbm
U1=M*(v2-v1)//Btu
//RESULTS
printf('The heat transfer and the work and change in internal energy=% f Btu',U1)
