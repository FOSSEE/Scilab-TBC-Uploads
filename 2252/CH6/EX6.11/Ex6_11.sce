
//consider part (i)
phi=%pi/12
mprintf("For part (i)\nVoltage leads the current wave by %d degrees\n",round(phi*180/%pi))
f=377.16/(2*%pi)
mprintf("Frequency of the wave shape=%d Hz\n",f)
//consider part (ii)
phi=%pi/3
mprintf("For part (ii)\nVoltage leads the current by %d degrees\n",round(phi*180/%pi))
mprintf("Frequency of the wave shape=omega/(2*pi)\n")
//consider part (iii)
phi=0-(-%pi/2)
mprintf("For part (iii)\nVoltage leads the current wave by %d degrees\n",round(phi*180/%pi))
mprintf("Frequency of the wave shape=omega/pi\n")
//consider part (iv)
mprintf("For part (iv)\nCurrent wave lags the voltage by an angle=alpha+atan(x/R) and the frequency of this wave shape is omega/(2*pi)")
