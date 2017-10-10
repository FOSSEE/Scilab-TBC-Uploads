// Ex 62 Page 403

clc;clear;close;
// Given
R=150;//ohm
Vrms=200;//V
Rd1=65;//ohm
Rd2=140;//ohm 

Vm=Vrms/sqrt(2);//V
//v=Vm*sin(theta)
Rf=R+Rd1;//ohm
Rb=R+Rd2;//ohm
//i_f=v/Rf;//A
//i_b=v/Rb;//A
Irms=1/2/%pi*(integrate('(sqrt(2)*sin(theta))**2','theta',0,%pi)+integrate('(sqrt(2)/3*sin(theta))**2','theta',%pi,2*%pi))
Iav=1/2/%pi*(integrate('sqrt(2)*sin(theta)','theta',0,%pi)+integrate('sqrt(2)/3*sin(theta)','theta',%pi,2*%pi))
printf("reading of ammeter 1= %.2f A",Irms)
printf("\n reading of ammeter 2 = %.2f A",Iav)
P=1/2*(Vrms**2/Rf+Vrms**2/Rb);//W
printf("\n\n Power taken from the mains = %.1f W",P)
Pc=Irms**2*R;//W
Pd=P-Pc;//W
printf("\n Power dissipated in rectifying device = %d W",Pd)
//Answer wrong in the textbook.
