
//calculating reactance of capacitor
C=100D-6
Xc=1/(2*%pi*50*C)
mprintf("Capacitive reactance,Xc=%f ohm\n",Xc)
//calculating RMS value of current
V=200
Irms=V/Xc
mprintf("RMS value of current=%f A\n",Irms)
//calculating max current
Imax=Irms*sqrt(2)
mprintf("Maximum current=%f A",Imax)
