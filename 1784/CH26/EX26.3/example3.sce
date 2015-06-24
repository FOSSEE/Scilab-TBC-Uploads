//Chapter26
//example 3
clc
//given three charges q1,q2,q3
q1=-1.0*10^-6 //charge in coul
q2=+3.0*10^-6 
q3=-2.0*10^-6
r12=15*10^-2 //seperation between q1 and q2 in m
r13=10*10^-2 // seperation between q1 and q3 in m
angle=%pi/6 //in degrees
F12=(9.0*10^9)*q1*q2/(r12^2) //in nt
F13=(9.0*10^9)*q1*q3/(r13^2) //in nt
F12x=-F12 ; //ignoring signs of charges
F13x=F13*sin(angle);
F1x=F12x+F13x
F12y=0 //from fig.263
F13y=-F13*cos(angle);
F1y=F12y+F13y //in nt
disp(F1x,"X component of resultant force acting on q1 in nt is")
disp(F1y,"Y component of resultant force acting on q1 in nt is")
