
//the graph is drawn considering R=%pi
R=%pi
theta=linspace(-%pi,%pi,100)
V=sqrt(R^2-theta^2)
plot2d(theta,V)
xtitle("Wave shape for example 6.10","theta","Voltage")
theta=linspace(%pi,3*%pi,100)
V=-sqrt(R^2-(theta-2*%pi)^2)
plot2d(theta,V)

Vrms=sqrt(integrate('(R^2-x^2)/(2*R)','x',-R,R))
mprintf("RMS value of such a wave shape will be %f of its maximum voltage",Vrms/R)
