//Initilization of variables
vo=0 //mi/h
v=60 //mi/h
t=13.8 //s
W=3385 //lb
xb=46 //in
xf=66 //in
xv=31 //in
g=32.2 //ft/s^2
//Calculations
a=(((v*88*60)/3600)-vo)/t //ft/s^2
//Summing horizontal forces
F=(W/g)*a //lb
//Solving for Rf and Rr
A=[1,1;-xf,xb]
B=[W;-F*xv]
C=inv(A)*B
Rr=C(1) //lb
Rf=C(2) //lb
//Result
clc
printf('The value of reactions are Rf=%f lb and Rr=%f lb',Rf,Rr)
