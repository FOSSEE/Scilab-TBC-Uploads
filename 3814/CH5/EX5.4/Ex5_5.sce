// to find coefficient of velocity speed ratio,jet diameter
//ex 5.5 pgno119
clc
cv=0.98//velocity of volume
g=9.8//gravity
h=130//head loss
V1=cv*(sqrt(2*g*h))//velocity of jet 
mprintf('\n velocity of the jet = %f m/s',V1)
s=0.46//specific gravity
u=s*V1//velocity 
mprintf('\n u = %f m/s',u)
N=200//Rotational speed
D=(60*u)/(%pi*N)//Diameter
mprintf('\n  peripherial velocity u =%f m',D)
d=D/9
mprintf('\n d =%f m',d)
p=8e6//petlon turbine 
no=0.87//eficiency
gamma1=9800//constant gamma
Q=(p/(no*gamma1*h))//volume flow rate
mprintf('\n Q = %f m3/s',Q)
n=(Q*4)/(%pi*d*d*V1)//
mprintf('\n number of jets n =%d',n)
Z=(D/(2*d))+15
mprintf('\n number of buckets %f ',Z)

