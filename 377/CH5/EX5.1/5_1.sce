disp("nd/(n+nd) = 1/[((Nc/(2*Nd))*exp(-(Ec-Ef)/(K*T))+1]");
Nc=2.8*10^19;
Nd1=1*10^16;
Nd2=1*10^18;
b=0.045;  //say (Ec-Ef)=b
c=0.026;  //sat K*T=c
a=1/(((Nc/(2*Nd1))*exp((-b)/(c))+1));
printf('\n The value of (nd/(n+nd)) for (10^16) is %f',a);
d=1/(((Nc/(2*Nd2))*exp((-b)/(c))+1));
printf('\n The value of (nd/(n+nd)) for (10^18) is %f',d);