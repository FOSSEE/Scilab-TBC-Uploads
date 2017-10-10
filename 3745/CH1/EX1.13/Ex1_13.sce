// Ex 13 Page 354

clc;clear;close;
// Given
//v=250*sin(omega*t)+50*sin(3*omega*t+%pi/3)+20*sin(5*omega*t+5*%pi/6)
V1=250;V3=50;V5=20;//V
fi1=0;fi3=60;fi5=150;//degree
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
printf("expression for current:")
printf("\n i = %.2f*sin(omega*t-%.1f)+%.1f*sin(3*omega*t%.1f)+%.2f*sin(5*omega*t-%.1f)",V1/r1,fi1-t1*180/%pi,V3/r3,fi3-t3*180/%pi,V5/r5,fi5-t5*180/%pi)

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
