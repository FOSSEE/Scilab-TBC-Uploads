// determine velocity of whirl at inlet and diameter of the wheel at inlet
// ex 6.1 pgno.143
clc
H=8 // head
g=9.8 // gravitional acceleration
t1=0.96 // peripheral volocity at inlet
t2=0.36 // flow velocity
u1=t1*sqrt(2*g*H)
mprintf('Peripheral velocity u1= %f m/s',round(u1))
vlf= t2*sqrt(2*g*H)
mprintf('\n Flow velocity V1f= %f m/s',vlf)
nh=0.85 // hydraulic efficiency
Vlw=(g*H*nh)/(u1)
mprintf(' \n  V1W= %f m/s',Vlw)
a1=vlf/Vlw // inlet angle tan
mprintf('\n alpha1 =%f ',a1)
mprintf('tan a1 = %d',atand(a1))
N=150 // runner speed
D1=(60*u1)/(%pi*N) // diameter
mprintf( '\n D1=  %f m',D1)
gamm =9800 // constant gamma
Q= (N*1000)/(gamm*H*nh) //flow rate
mprintf('\n Q = %f m3/s',Q)
