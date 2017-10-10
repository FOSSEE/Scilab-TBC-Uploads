// to determine pressure at point 2
clc
p1=4.4 // bar
d1=15e-2 //cm
z1=3.2 // m
z2=1.2// m
d2=22.5e-2// cm
Q=0.05 // VOLUME FLOW RATE AT m3/s
a1=(%pi/4)*d1^2 // area at d1 
a2=(%pi/4)*d2^2 // area at d2
mprintf('a1 = %e m2',a1)
mprintf('\n a2= %e m2',a2)
V1=Q/a1 // volume at different area
V2=Q/a2 // volume at different area a2
mprintf(' \n V1 = %e m/s',V1)
mprintf('\n  V2 = %e m/s',V2 )
// specific weight  ofx benzene =8.82x 103 kg/m3
g1=9.8
gamma1=8.82e3 // specific  weight of benzene
P2=((p1*10^5)/(g1))+((V1^2)/(2*g1))+z1-((V2^2)/(2*g1))-z2
p21=P2*gamma1
mprintf('\n  P2=  %f Pa',p21)
