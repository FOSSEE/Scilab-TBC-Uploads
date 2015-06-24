clc
//initialisation of variables
v=12.5 //i.p.h
p1=8.25//in
p2=12//in
t=110//per min
g1=280//C.H.U/ft^3
g2=215//ft^3
V=25//percent
e=0.875//in
T=33000//in
v1=0.4170//ft^3
//CALCULATIONS
M=(T*v)/((%pi*(p1)^2)/(4)*(p2/p2)*(t))//lb.in^2
V1=%pi*(p1)^2/4*p2/1728*e//ft^3
V2=(%pi*(p1)^2*p2)/(4*4*1728)//ft^3
G=(g2/60*1/t)//ft^3
T1=G*g1//C.H.U
T2=(T1/v1)//C.H.U
F=(M/T2)//C.H.U
//RESULTS
printf('The value of the Tookey factor for gas engine=%.f C.H.U',F)
