// determine guide vane angle and runner vane angle at exit for radial discharge
// ex 6.4 pgno.149
clc
H=12 // m
Q=0.28 //m3/s
Vf=0.15 // velocity flow 
N=300 // rpm
nh=0.8 // percen
g=9.8 //gravitional acceleration
r2=1 // runner van
r1=2 
V1f=Vf*(sqrt(2*g*H)) // velocity flow
v2f=V1f
mprintf(' velocity flow V1f=V2f = %f m/s',V1f)
Vlw=sqrt((nh*g*H))
mprintf('  \n V1w = %f m/s',Vlw)
u1=Vlw
u2=u1*(r2/r1)
mprintf(' \n u2 = %f m/s',u2)
b2=atand(v2f/u2)
mprintf(' \n  tanb2= %f degree',b2)
a1=atand(V1f/u1)
mprintf(' \n tana1 = V1f/u1 = %f degree',a1)



