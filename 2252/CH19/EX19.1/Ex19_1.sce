
//calculating torque deveoped
P=6//no. of poles 
A=6//no. of parallel circuits
Ia=300//armature current
n=500//no. of armature turns
Z=2*500//total no. of conductors
phi=75D-3//flux per pole
Ta=.159*P*phi*Ia*Z/A
mprintf("Torque developed=%f N-m\n",Ta)
//calculating shaft torque
T=2.5*Ta/100//torque lost in windage, friction and iron losses
Tsh=Ta-T
mprintf("Shaft torque=%f N-m\n",Tsh)
//calculating shaft power
N=400//speed in rpm
Psh=2*%pi*N*Tsh/60
mprintf("Shaft power=%f kW",Psh/1000)
//answer vary from the textbook due to round off error
