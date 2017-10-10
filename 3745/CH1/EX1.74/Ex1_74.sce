// Ex 74 Page 412

clc;clear;close;
// Given
//v=350*sin(omega*t)+80*sin(3*omega*t+%pi/3)+40*sin(5*omega*t+5*%pi/6)
V1=250;V3=50;V5=30;//V
fi1=0;fi3=60;fi5=90;//degree
R=20;//omh
L=0.05;//H
omega=314;//rad/s

X1=omega*L;//ohm
Z1=R+%i*X1;//ohm
X3=3*omega*L;//ohm
Z3=R+%i*X3;//ohm
X5=5*omega*L;//ohm
Z5=R+%i*X5;//ohm
[r1,t1]=polar(Z1);
[r3,t3]=polar(Z3);
[r5,t5]=polar(Z5);
I1m=V1/r1;//A
I3m=V3/r3;//A
I5m=V5/r5;//A
Irms=sqrt(I1m^2/2+I3m^2/2+I5m^2/2);//A
Vrms=sqrt(V1^2/2+V3^2/2+V5^2/2);//A
printf("\n Irms=%.f A\n Vrms=%.f V",Irms,Vrms)
P=Irms^2*R;//W
printf("\n Total Power, P=%.f W",P)
cosfi=P/Vrms/Irms;//Power factor
printf("\n Power factor = %.2f",cosfi)
