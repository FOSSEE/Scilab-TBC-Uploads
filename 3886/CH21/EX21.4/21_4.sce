//SHM
//r*sind(theta1)=0.2
//r*omega*cosd(theta1)=0.5
//r*sind(theta2)=0.3
//r*omega*cosd(theta2)=0.35
//thus
theta1=asind(0.44)
r=(0.2)/(sind(26.1))  //m
omega=1.225  //rad/sec^2
vmax=0.454*1.225  //m/sec
amax=-0.454*1.225^2  //m/sec^2
f=(1.225)/(2*%pi)  //osc. per sec
printf("\namax=%.3f m/sec^2\nf=%.3f osc. per. sec\nvmax=%.3f m/sec",amax,f,vmax)
