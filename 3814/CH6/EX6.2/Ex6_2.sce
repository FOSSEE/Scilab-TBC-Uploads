// determine head and power output if angular velocity  from fig2=
// ex 6.2 pgno.142
clc
r1=300 // mm inlet radius 
r2=150 //mm outer radius
Q=0.05 // m3/s flow rate
a1=30 //degree inlet guide blade
a2=80// degree angle 
v1=6 // m/s velocity 
v2=3//m/s velocity
t=25 // angular velocity
n=0.9
n1=0.8
g=9.8 //
gammam=9800 // constant gammma
u1=(r1/1000)*t // velocity
u2=(r2/1000)*t
mprintf('\n u1 = %f m/s',u1)
mprintf(' \n u2 = %f m/s',u2)
Vlw= v1*cosd(a1)
mprintf('\n Vlw = v1cos a1 = %f m/s',Vlw)
V2w=v2*cosd(a2)
mprintf(' \n V2w = V2cos a2 = %f m/s',V2w)
E=((u1*Vlw)-(u2*V2w))/(g) // Eduler's head
mprintf('\n E = %f m',E)
H=E/n // head
mprintf('\n H = %f m',H)
pin=(gammam*Q*H)/1000 // power input
mprintf('\n Power input= gQH = %f W',pin)
pout=pin*n1 // power out
mprintf('\n power output =effiency*pin =%f W',pout)
