clear;
clc;
//Example 14.10
Kn1=105;
Kn2=100;
Iq=200;
dKn=Kn1-Kn2;
printf('\ndifference in conduction parameter=%.2f microA/V^2\n',dKn)
Kn=(Kn1+Kn2)/2;
printf('\naverage of the conduction parameter=%.2f microA/V^2\n',Kn)
Vos=sqrt(Iq/(2*Kn))*dKn/(2*Kn);
printf('\noffset voltage=%f V\n',Vos)
