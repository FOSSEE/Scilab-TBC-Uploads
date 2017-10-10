clc
//initialisation of variables
p=1000//N.s^2/m^4
r=220//rpm
d=3.5//m^3/s
p1=25//m/s
r1=0.75//m
r2=0.60//m
U1=(2*%pi*r/60)*r1//m/s
U2=(2*%pi*r/60)*r2//m/s
v=0.5//m
v1=0.707//m
p2=10//m
//CALCULATIONS
V1=U1+p1*v//m/s
V2=U2-(p2)*v1//m/s
P=(p*d)*[(U1*V1)-(U2*V2)]//J/s
//RESULTS
printf('The power developed by the turbine wheel is=% f J/s',P)
