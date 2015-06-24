clc
//initialisation of variables
d=0.15//lb
p=20//lb/in^2
p1=100//lb/iN62
t=200//degree C
f=10//percent
Pt=0.5457*p1//lb/in^2
x1=0.996//in
x2=0.952//in
h=29//C.H.U/lb
h1=65//C.H.U/lb
v=7.73//ft^3
v1=20.12//ft^3
T=0.364//in
T1=0.465//in
v2=sqrt(2*32.2*1400*h)//ft/sec
v3=sqrt(2*32.2*1400*h1)//ft/sec
//CALCULATIONS
V1=d*v*x1//ft^3
V2=d*v1*x2//ft^3
A1=(V1/v2)*144//in^2
A2=(V2/v3)*144//in^2
//RESULTS
printf('the throat and exit diameters of the nozzle=% f in^2',A2)
