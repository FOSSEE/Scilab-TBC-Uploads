
// to find efficiency
// ex 5.1 pgno.115
clc
p=67.5*1000 // 67.5 kw to develop wheel
no=0.83 // efficiency of installation 
gamma1=9800 // constant gamma
g=9.8 //gravitational acceleration 
N=400 // rotates
H=60 // head of water 60 m
Q=p/(no*gamma1*H)// volume flow rate
printf(" Q= %.3f m3/s",Q)
v1=sqrt(2*g*H) // velocity of the jet
printf("\n  V1 = %f m/s",v1)
d=sqrt((0.138*4)/(3.14*v1))
printf("\n %e m",d)
r=0.46 //  ratio of bucket speed in rev/min
u=v1*r //velocity
printf("\n %f m/s",u)
D=(H*u)/(%pi*N)
printf("\n %f m",D)
w=(2*N*%pi)/(H) //specific speed of trubine
mprintf('\n specific speed of turbine %f rad/s',w)
wt=(w*((p/1000)^(0.5)))/((g*H)^((5)/(4)))
mprintf('\n  wt  = %f',wt)
