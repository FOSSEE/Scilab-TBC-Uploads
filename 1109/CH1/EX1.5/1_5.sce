clear;
clc;
f=1000;R=10.4;L=.0037;G=.8*(10^-6);C=.00835*(10^-6);l=1000;Vs=1;
w=2*%pi*f;
Z=R+round((%i*w*L));
Y=G+(%i*w*C);
Zo=sqrt(Z/Y);
printf('-Characteristic impedance is Zo = %f /_%f ohms\n',fix(abs(Zo)),round(((atan(imag(Zo),real(Zo))*180/%pi))));
P=sqrt(Z*Y);
printf('-Propagation constant P = %f + j(%f)\n',fix(real(P)*10^4)/10^4,round(imag(P)*10^4)/10^4);
b=imag(P);

Is=Vs/Zo;Vp=(w/b)*(10^-5);v=round(Vp*100)/100;
printf('-Phase velocity Vp = %f * 10^5 km/sec\n',v);
Ir=Is*exp(-P*l);
P=((abs(Ir))^2)*real(Zo);
printf("-Power delivered at receiving end = %f micro-watt",P*(10^6));



