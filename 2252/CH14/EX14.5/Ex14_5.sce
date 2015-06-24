
//calculating voltage regulation at full load with 0.8 pf lagging
Ip=2000/400//primary current at full load
Rp=3
Xp=4
phi=acos(.8)
Vp=400
VR=Ip*(Rp*cos(phi)+Xp*sin(phi))/Vp*100
mprintf("Voltage regulation at full load with 0.8 pf lagging=%f percent\n",VR)
//calculating voltage regulation at full load with 0.8 pf leading
VR=Ip*(Rp*cos(phi)-Xp*sin(phi))/Vp*100
mprintf("Voltage regulation at full load with 0.8 pf leading=%f percent\n",VR)
//calculating regulation at half load with 0.8 pf lagging
Ip=Ip/2//half load primary current
VR=Ip*(Rp*cos(phi)+Xp*sin(phi))/Vp*100
mprintf("Voltage regulation at half load with 0.8 pf lagging=%f percent",VR)
