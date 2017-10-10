// to find pelton turbine completely 
// ex 5.6 pgno.120
clc
P=100/4 //power each unit
mprintf('\n power output of each unit P = %d MW',P)
gammma=9800 //constant gammma
Q=6.85 //flow rate
H=580 //head
g1=9.8
N=428 // speed
t1=60 // temperature
n=2 // types of turbine
k=0.95 //ratio of head
Hp=(gammma*Q*H)/(1000*1000) // hydraulic efficiency
mprintf('\n hydraclic power = %f MW',Hp)
on=P/Hp // overall efficiency
mprintf('\n Overall efficiency = %f',on)
sp=0.46 // assuming speed ratio
V1=sqrt(2*g1*H) // velocity of jet
mprintf('\n velocity of the jet V1 =%f m/s',V1)
u=V1*sp // peripherial velocity
mprintf('\n u =%f m/s',u)
D=(t1*u)/(%pi*N)// peripherial velocity
mprintf('\n  peripherial velocity %f m',D)
d=sqrt(((Q)/((%pi/4)*V1*n)))
mprintf('\n %f m',d)
Z=((D)/(2*d))+15 //number of buckets
mprintf('\n number of bukets Z =%f m',Z)
m=D/d // jet ratio
mprintf('\n jet ratio = m= %f',m)
L=2.5*d // length
mprintf('\n Radial length of bucket L = %f m',L)
B=4*d // width
mprintf('\n width of bucket B =%f m',B)
mprintf('\n Depth of bucket hyrauclic efficiency %f m',d)
nb=2*(u/V1)*(1-(u/V1))*(1-cosd(160))
mprintf('\n %f',nb)
nm=on/nb
mprintf('\n nm =%f',nm)
