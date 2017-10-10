
//determine the shaft power hydraulic efficiency
//ex 6.5 pgno.151
clc
N=1260 // runner speed
Q=0.4 // flow rate
H=92 // head 
g=9.8 //constant
a1=20 // van angle
R1=(2*600)/1000 // radius at inlet
r1=600/1000
B1=30/1000 
p=1000 // power
hp=360e3 
V1f=(Q/(%pi*R1*B1)) // velocity of flow
mprintf(' V1f  = %f m/s',V1f)
V1w = V1f/(tand(20)) // velocity of width
mprintf(' \n V1w = %f m/s',V1w)
T=Q*p*V1w*r1 // temperature
mprintf('\n  T = %d N-m',T)
w=(2*N*%pi)/60 // width
S=T*w // shaft power
mprintf('\n  shaft power %d Watts',S)
n=(S/hp)*100 //spped
mprintf('\n  overall efficiency = shaft power/hydraulic power %f percentage',n)
Wt=(w*sqrt(S/1000))/((g*H)^(5/4))
mprintf('\n wt = %f',Wt)
Ns=(N*sqrt(S/1000))/(H^(5/4))
mprintf('\n Ns =  %f',Ns)
