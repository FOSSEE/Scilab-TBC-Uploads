// determine inlet and exit angles of blades mean diameter
// ex 7.1 pgno. 169
clc
H=21.8 // head of turbine
P=21 // MW power
N=140 // number runs of rpm
D1=4.5 // diameter in m
Dh=2.0 // in meter
nh=0.94 // efficiency
nn= 0.88// efficiency in exit angles
g=9.8
M=(D1+Dh)/2 //mean diameter in m
mprintf('Mean Diameter  = %f m',M)
w=(2*N*%pi)/60
mprintf('\n w= %f rad/s',w)
u=(w*M)/2
mprintf('\n u=wr = %f m/s',u)
Vlw=(nh*g*H)/u
mprintf('\n Vlw = %f m/s',Vlw)
Q=(P*1000*1000)/(nn*H*9800) // flow rate
mprintf('\n Q=%f m3/s',Q)
vf=(4*Q)/(%pi*((D1^2)-(Dh^2)))
mprintf('\n Vf = %f m/s',vf)// velocity in m/s
b1=vf/(u-Vlw) // tan b1
mprintf(' \n  tanb1 =%f degree ',atand(b1)) // inlet angles
b2=vf/u // tan b2
mprintf('\n b2= %f degree',atand(b2))// exit angles
