

//i=Imax*sin(2*%pi*f*t)
Imax=100//max value of current
f=25//frequency in Hz
//calculating time after which current becomes 20 A
i=20
t=asin(i/Imax)/(2*%pi*f)
mprintf("Time after which current becomes 20 A=%f sec\n",t)
//calculating time after which current becomes 50 A
i=50
t=asin(i/Imax)/(2*%pi*f)
mprintf("Time after which current becomes 50 A=%f sec\n",t)
//calculating time after which current becomes 100 A
i=100
t=asin(i/Imax)/(2*%pi*f)
mprintf("Time after which current becomes 100 A=%f sec\n",t)
