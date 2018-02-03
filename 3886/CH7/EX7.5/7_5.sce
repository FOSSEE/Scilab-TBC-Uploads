//Maximum power that can be transmitted
alpha=asin((500-300)/2*2500)  //radians
//angle of contact
theta=%pi-2*alpha  //radians
f1=4
b=100
t=3
//T2 may be allowed upto
T2=f1*b*t  //N
mu=0.3
T1=1200/2.505  //N
r=500/2
omega=(2*%pi*100)/60
P=(T2-T1)*r*omega/1000000  //kW
printf("The maximum power that can be transmitted=%.3f kW",P)
