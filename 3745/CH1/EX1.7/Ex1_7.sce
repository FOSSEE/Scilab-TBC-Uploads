// Ex 7 Page 347

clc;clear;close;
// Given
//v=100*sin(314*t)
R=25;//ohm
C=80;//uF
omega=314;//radian
Vm=100;//V

Xc=1/omega/(C*10**-6);//ohm
Z=sqrt(R**2+Xc**2);//ohm
Im=Vm/Z;//A
theta=atan(Xc/R);//radian
printf("equation for instant current:")
mprintf("\n i=%.2f*sin(%d*t+%.2f)",Im,omega,theta)
P=(Im/sqrt(2))**2*R;//W
mprintf("\n Power consumed = %.1f W",P)
Vcm=Im*Xc;//V 
//(when i=Im/2)
i=0.5*Im;//A
//vc=Vcm*sin(314*t+theta-%pi/2)
//i=Im*sin(314*t+theta)
tt=asin(i/Im) ;//radian tt=314*t+theta
vcm=Vcm*sin(tt-%pi/2)
mprintf("\n Voltage across capacitor = %.1f V(+ve & -ve)",abs(vcm))
