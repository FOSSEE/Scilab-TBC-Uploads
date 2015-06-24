

//calculating greatest rate of change of current
//i=50*sin(100*%pi*t)
mprintf("Greatest rate of change of current=%f A/sec\n",50*100*%pi)
//calculating average value of current
f=50//frequency of the wave
T=1/f
Imean=1/.01*integrate("50*sin(100*%pi*t)","t",0,T/2)
mprintf("Average value of the given current=%f A\n",Imean)
Irms=sqrt(integrate("(50*sin(theta))^2","theta",0,2*%pi)/(2*%pi))
mprintf("RMS value of current=%f A\n",Irms)
//calculating time interval between a maximum value and next zero value
t=(%pi/2)/(100*%pi)
mprintf("Time interval between a maximum value and the next zero value is %f sec to %f sec",t,2*t)
//value of greatest rate of change of current is given wrong in the textbook due to approximation
