clc
//initialisation of variables
p1=300//lb
p=75//lb/in^2
p2=8//lb/in^2
h=90//C.H.U/lb
Pt=0.58*p//lb/in^2 absolute
h1=24//lb/C.H.U
D=0.968//C.H.U
D1=0.886//C.H.U
v=9.7//ft^3
v1=47.24//ft^3
V=sqrt(2*32.2*1400*24)//ft/sec
V1=sqrt(2*32.2*1400*90)//ft/sec
//CALCULATIONS
H=(p1*v*D/3600)//ft^3
V2=(p1*v1*D1/3600)//ft^3
A=0.768//in^2
A1=1.72//in^2
d=sqrt(4*0.768/%pi)//in
d1=sqrt((4*A1)/(%pi))//in
//RESULTS
printf('the diameters at the throat and exit of the nozzle=% f in',d1)
