// to find flow rate and shaft power develpoed by the turbine
// ex 5.2 pgno 116
clc
g=9.8 // gravitional acceleration
H=400 // head
hf=23.6 // penstock and nozzle
d=80e-3 // diameter of the jet
u=40 // bucket speed
k=.85 // ratio of heat
deg=165 // degree
n1=0.9 // rotational speed
V1=sqrt(2*g*(H-hf)) // velocity of jet
mprintf('\n  velocity of jet v1= %f m/s',V1)
E=u/g*((V1-u)*(1-(k*cosd(deg)))) // eulers head
mprintf('\n eulers head E = %f m',E)
Q=(%pi/4)*d^2*V1 // flow rate
mprintf('\n Flow Rate Q = %f m3/s',Q)
Pe=g*Q*E // power developed by the runner
mprintf(' \n power developed by the runner =Pe= %f kw',Pe)
P=Pe*n1 // nint
mprintf('\n nint = %f kw',P)
