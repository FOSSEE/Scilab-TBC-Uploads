
//calculating shaft power
V=100//voltage applied to series motor
Ra=.22//armature resistance
Rse=.13//series field resistance
Rm=Ra+Rse//total resistance
Ia=45//current in armature circuit
Eb=V-Ia*Rm
Pm=Eb*Ia//mechanical power developed
Wc=750//iron and friction losses
Psh=Pm-Wc
mprintf("Shaft power=%f kW\n",Psh/1000)
//calculating torque developed
N=750//speed in rpm
Ta=60*Pm/(2*%pi*N)
mprintf("Total torque=%f N-m\n",Ta)
//calculating shaft torque
Tsh=60*Psh/(2*%pi*N)
mprintf("Shaft torque=%f N-m",Tsh)
