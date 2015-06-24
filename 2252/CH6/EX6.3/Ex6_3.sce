
//calculating instantaneous voltage at .005 sec after the wave passes through zero in positive direction
f=50//frequency
Emax=350//max value of voltage
t=.005
e1=Emax*sin(2*%pi*f*t)
mprintf("Voltage at .005 sec after the wave passes through zero in positive direction=%d V\n",e1)
//calculating instantaneous voltage at .008 sec after the wave passes through zero in negative direction
t=.008
e2=-Emax*sin(2*%pi*f*t)
mprintf("Voltage at .008 sec after the wave passes through zero in negative direction=%f V",e2)

