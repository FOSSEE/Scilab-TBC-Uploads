
//calculating speed
P=4//no. of poles
V=220//applied voltage
Ia=46//current in armature circuit
Ra=.25//field resistance
Rse=.15//series field resistance
Rm=Ra+Rse
Eb=V-Ia*Rm
A=2//no. of parallel circuits
phi=20D-3//flux per pole
Z=1200//total conductors on armature
N=round(60*Eb*A/(P*phi*Z))
mprintf("Speed, N=%d rpm\n", N)
//calculating total torque
Ta=.159*P*phi*Ia*Z/A
mprintf("Total torque=%f N-m\n",Ta)
//calculating shaft power
Pm=Eb*Ia//mechanical power developed
Wc=900//iron and friction losses
Po=Pm-Wc
mprintf("Shaft power=%f kW\n",Po/1000)
//calculating shaft torque
Tsh=60*Po/(2*%pi*N)
mprintf("Shaft torque Tsh=%f N-m\n", Tsh)
//calculating efficiency
Pin=V*Ia//input to motor
e=Po/Pin*100
mprintf("Efficiency=%f percent",e)
