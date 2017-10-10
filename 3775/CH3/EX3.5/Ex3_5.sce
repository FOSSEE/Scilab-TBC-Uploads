//Ex 3.5 page 122

clc;
clear;
close;

R=20;// ohm
V=230;// V
f=50;// Hz
alpha=30;// degree
Vm=V*sqrt(2);//V
Vo=Vm/%pi*(1+cos(alpha*%pi/180));// V
printf('Average load voltage = %.1f V',Vo)
Io=Vo/R;// A
printf('\n Average load current = %.2f A', Io)
Vor=V/sqrt(%pi)*sqrt((%pi-alpha*%pi/180)+sin(2*alpha*%pi/180)/2);// V
Ior=Vor/R;// A
printf('\n rms load current = %.2f A', Ior)
Iav=Io/2;//A
printf('\n Average thyristor current = %.2f A', Iav)
Irms=Ior/sqrt(2);// A
printf('\n rms thyristor current = %.3f A', Irms)
