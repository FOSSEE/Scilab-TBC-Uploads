//speed of pinion
P=480  //N
Pw=1800  //W
v=Pw/P  //m/sec
//module
m=8
d=25*m  //mm
r=d/2000  //m
omega=v/r  //rad/sec
N=(60*omega)/(2*%pi)  //rpm
//rest is theory
printf("Speed of the pinion N=%.1f rpm",N)

