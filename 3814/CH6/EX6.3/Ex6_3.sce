// design a= francis turbine
// ex 6.3 pgno.146
clc
h=68 // head 
x=0.15 // flow ratio
N1=750 // speed 
n2=0.1 //  breadth to diameter ratio at inlet
p=330 //power output
ga=9800 //
g1=9.8
d2=((1/2)*600)
eh=0.94 // hydraulic efficiency
eo=0.85 // overall efficiency
ar=0.6 // area
k1=0.94 // ratio 
Q1=(p*1000)/(eo*ga*h) // volume of flow rate
mprintf('Q= %f m3/s',Q1)
vf=(x*(sqrt(2*g1*h))) // velocity of flow
mprintf(' \n Vf= %f m/s',vf)
D=sqrt((Q1)/(eh*%pi*n2*vf)) // diameter
mprintf('\n D1 = %f m',D)
B1=D*n2 // width 
mprintf('\n B1= %f m',B1)
u=(%pi*D*N1)/60 
mprintf('\n u1 = piD1N/60 =%f m/s',u)
Vl=(g1*eh*h)/u 
mprintf('\n  Vlw = %f m/s',Vl)
a=atand(vf/Vl)//area
mprintf(' \n tana1= %f degree ',a)
d1=1/2
U=(%pi*d2*N1)/60 
mprintf('\n u2 = %e m/s',U)
b2=atand(vf/11.7)
mprintf('\n tanb2 = %f degree',b2)
// assume k1=k2 v1f=v2f
n3=(ar^2*n2)/(0.3^2)
mprintf('\n n2 = %f',n3)
B2=d2*n3
mprintf('\n B2 = %f mm',B2)
