
theta=linspace(0,2*%pi,100)
i=10+10*sin(theta)//expression for the resultant wave
plot2d(theta,i)
xtitle("Wave shape for example 6.7","theta","current")

//calculating average value of the resultant wave
Iavg=integrate('10+10*sin(theta)','theta',0,2*%pi)/(2*%pi)
mprintf("Average value of the resultant current wave=%d A\n",Iavg) 
//calculating RMS value of current of the resultant wave
Irms=sqrt(integrate('(10+10*sin(theta))^2','theta',0,2*%pi)/(2*%pi))
mprintf("RMS value of the resultant current wave=%f A",Irms)
