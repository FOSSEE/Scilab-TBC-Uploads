clear;
clc;
f=1000;R=6;L=.0022;G=.25*(10^-6);C=.005*(10^-6);l=100; 
//value of C as taken in solution
w=2*%pi*f;
Z=R+(%i*w*L);
Y=G+(%i*w*C);
Zo=sqrt(Z/Y);
C=real(Zo);
D=imag(Zo);
printf('(i)Terminating impedance for which there will be no reflection is Zo = %f /_%f ohms\n',fix(abs(Zo)),round(((atan(imag(Zo),real(Zo))*180/%pi))*10)/10);
P=sqrt(Z*Y);
a=real(P);
b=imag(P);
a1=a*l*8.66;
printf('(ii)(a)Attenuation suffered while travelling = %f db\n',a1);
Vp=(w/b)*(10^-5);v=round(Vp*100)/100;
printf('(ii)(b)Phase velocity Vp = %f * 10^5 km/sec\n',v);

