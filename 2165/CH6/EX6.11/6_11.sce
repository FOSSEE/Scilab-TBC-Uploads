clc
//initialisation of variables
h=0.5//lb
p1=2.5//lb/in^2
p2=100//lb/in^2
t=250//Degree C
pv=1.3//constant
pt=0.5457*p2//lb/in^2
t1=18//degree C
h1=32//C.H.U/lb
h2=151//C.H.U/lb
D=0.887//in
V1=sqrt(2*32.2*1400*h1)//ft/sec
V2=sqrt(2*32.2*1400*h2)//ft.sec
s1=8.74//ft^3
s2=140.8//ft^3
T1=0.687//in
T1=1.77//in
V3=h*s1//ft^3/sec
V4=h*s2//ft^3/sec
//CALCULATIONS
A1=(V3/V1)*144//in^2
A2=(V4/V2)*144//in^2
//RESULTS
printf('the size os nozzle=% f in^2',A2)
