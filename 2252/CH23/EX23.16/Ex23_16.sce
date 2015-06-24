
R2=1.1//rotor resistance per phase
//at 60 Hz supply
f=60//frequency of supply
P=6//no. of poles
Ns1=120*f/P//synchronous speed
Nr=1000//speed of rotor
s_m1=(Ns1-Nr)/Ns1//slip at maximum torque
X2=R2/s_m1
L2=X2/(2*%pi*60)
//at 50 Hz supply
X2=2*%pi*50*L2
s_m2=R2/X2//slip at maximum torque
Ns2=120*50/6//synchronous speed
Nr2=(1-s_m2)*Ns2
mprintf("Rotor speed at maximum torque=%d rpm",round(Nr2))
