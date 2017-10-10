// to calculate inlet angle and outlet angle of the vane for no shock entry and exit
//ex 2.14 pgno.49
clc
v1=36 //m/s
u=15 //m/s
d=100 //mm
alpha1=30 // degree
alpha2=90 // degree
B=(v1*sind(30))/(v1*cosd(30)-u)
mprintf(' \n tan B1 =%f',B)
B1=atand(B) // beta in  degreee
mprintf(' \n tan in degree %d',atand(B))
vr1=(v1*sind(30))/(sind(B1)) // inlet triangle
mprintf('\n Vr1 = %f m/s',vr1)
vr2=0.85*vr1
mprintf('\n Vr2 = %f',vr2)
B2=u/vr2
B21=acosd(B2)
mprintf(' \n CosB= %d degree',B21)
//part b   to find force and velocity

p=1000//presure
d=0.1//diameter
v1=36 //velocity
m=p*((%pi*d*d)/4)*v1//mass
mprintf('\n \n \n part b  \n \n \n ')
mprintf('\n m = %f kg/s',m)
v1x=v1*0.866
mprintf('\n V1x == %f m/s',v1x)
v2=1
v2x=v2*cosd(90)
mprintf(' \n V2x = V2cos90 =%d ',v2x)
F=m*(v1x-v2x)//fource
mprintf('\n Force on the direction of motion  F=m(V1x-V2x) %d N',F)
