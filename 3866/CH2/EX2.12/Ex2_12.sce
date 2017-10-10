clear; close; clc;

disp('a)');
k=1.38*(10^(-23));//boltzmann constant
t=300;//room temperature
q=1.6*(10^(-19));
Na=3*(10^17);//in cm^(-3) 
na1=3*(10^23);//in m^(-3)
Nd=10^20;//in cm^(-3)
Ni=1.45*(10^10);
esi=11.7*8.85*(10^(-12));
FIb=(k*t*log((Na*Nd)/(Ni*Ni)))/q;
Cjb=((esi*q*na1)/(2*FIb))^(0.5);
disp(FIb,'Built in junction potential(in volts):');
disp(Cjb,'capacitance per length(farad/(m^2)):');//answer vary due to round off error

disp('b)');
y=0.3;//in micrometer
xi=0.05;//in micrometer
w=0.4;//in micrometer
Cjb=1.6;//in (fF/micrometer^2) from 2_12a
FIb=1;//in volts from 2_12a
Vj1=0; 
Vj2=-1.2;
Cj1=(Cjb*w*(y+xi));
Cj2=(Cjb*w*(y+xi))/((1-(Vj2/FIb))^0.5);
disp(Cj1,'junction capacitance for Vj=0(in fF)=');
disp(Cj2,'junction capacitance for Vj=-1.2v(in fF)=');

disp('c)');
v2=0;
v1=-1.2;//in volts
Keq=(-2)*sqrt(FIb)*(sqrt(FIb-v2)-sqrt(FIb-v1))/(v2-v1);
Cj=Keq*Cjb*w*(y+xi);
disp(Cj,'junction capacitance(in fF)=');
