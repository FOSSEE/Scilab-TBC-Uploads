
//calculating torque developed by armature
V=200//voltage applied across the motor
Rsh=40//resistance of shunt field winding
Ish=V/Rsh
I=100//total current drawn by motor
Ia=I-Ish
Ra=.1//armature resistance
Eb=V-Ia*Ra
P=Eb*Ia//mechanical power developed
N=750//speed in rpm
Ta=60*P/(2*%pi*N)
mprintf("Torque developed by armature=%f N-m\n",Ta)
//calculating copper losses
Wcu1=V*Ia-Eb*Ia//armature copper losses
Wcu2=Ish^2*Rsh//field copper losses
mprintf("Total copper losses=%f W\n",Wcu1+Wcu2)
//calculating shaft power
Wc=1500//friction and iron losses
Pi=200*100//input to motor
Psh=Pi-(Wc+Wcu1+Wcu2)
mprintf("Shaft power=%f kW\n",Psh/1000)
//calculating shaft torque
Tsh=60*Psh/(2*%pi*N)
mprintf("Shaft torque=%f N-m\n",Tsh)
//calculating efficiency
e=Psh/Pi*100
mprintf("Efficiency=%f percent",e)
