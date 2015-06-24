//Determine the induced voltage in the telephone line
clear;
clc;

//soltion
//given
Vl=132*1000;//Volt
P=28*10^6;//load in kw
pf=0.85;//power factor
f=50;//Hz
l=200;//length of the line
r=0.005;//radius of conductor
hA=20;//height of the line
Ao=4*sqrt(3)/2;
dAP=Ao+5;
dAQ=dAP+1;;
dBP=sqrt(5*5+2*2);
dBQ=sqrt(6*6+2*2);
Ma=0.2*log(dAQ/dAP);
Mb=0.2*log(dBQ/dBP);
M=(Mb-Ma)*10^-3;
I=P/(sqrt(3)*Vl*pf);
Vm=2*%pi*f*M*I;
printf("For 200 km line induced voltage= %.1f volts\n",Vm*l);
Va=Vl/sqrt(3);
Vb=Va;
Vpa=Va*log((2*(hA+Ao)-dAP)/dAP)/log((2*(hA+Ao)-r)/r);
Vpb=Vb*log((2*(hA+Ao)-dBP)/dBP)/log((2*(hA+Ao)-r)/r);
Vp=Vpb-Vpa;
printf("The potential of telephone line= %d volts",Vp);
//the ans in the book is Vm= 90.4 volts and Vp=4396 because of using round off in some values
