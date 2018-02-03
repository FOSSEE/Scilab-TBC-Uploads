//maximum power that can be transmitted
mu=0.3
alpha=asin(((480/2)-(320/2))/2500)  //radians
theta=%pi-2*alpha
//neglecting centrifugal tension
f=3
b=150
t=8
//maximum force permitted is
T2=f*b*t  //N
T1=T2/%e^mu*theta
r=480/2
omega=(2*%pi*800)/60
aP=((3600-1429.82)*480*2*800*%pi)/(2*60*(10^6))  //kW
//If centrifugal tension is considered
v=r*omega/1000  //m/sec
m=1.32
Tc=m*v^2  //N
//maximum force that can be permitted on the belt
//T=T2+Tc=f*b*t
bT2=3600-533.62  //N
bT1=3066.38/2.5178  //N
//maximum torque that can be transferred
bP=(bT2-bT1)*v/1000  //kW
printf("\nneglecting centrifugal tension P=%0.3f kW\nConsidering centrifugal tension P=%0.3f kW",aP,bP) 
 


