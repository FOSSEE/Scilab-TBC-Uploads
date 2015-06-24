
//for no load test
V0=400//applied voltage
I0=1//current
W0=60//power consumed
Iw=W0/V0
R0=V0/Iw
Im=sqrt(I0^2-Iw^2)
Xm=V0/Im
mprintf("No load parameters:\nR0=%f ohm,\nXm=%f ohm\n",R0,Xm)
//for short circuit test
Vsc=15//applied voltage
Isc=12.5//current
Wsc=50//power consumed
Zp=Vsc/Isc
Rp=Wsc/Isc^2
Xp=sqrt(Zp^2-Rp^2)
mprintf("Equivalent resistance and reactance referred to primary is %f ohm and %f ohm\n",Rp,Xp)
//calculating regulation at full load, 0.8 pf lagging
Vp=400
Ip=5D+3/400
VR=Ip*(Rp*.8+Xp*.6)/Vp*100
mprintf("Voltage regulation=%f percent\n",VR)
//calculating iron and copper losses
Wi=W0
Wcu=Wsc
mprintf("Iron losses=%f W\nCopper losses at full load=%f W\n",Wi,Wcu)
//calculating efficiency at full load and 0.8 pf lagging
e=5D+3*.8/(5D+3*.8+Wi+Wcu)*100
mprintf("Efficiency at full load and .8 pf lagging=%f percent",e)
