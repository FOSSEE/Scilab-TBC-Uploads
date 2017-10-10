k=0.025852;  //say k=K*T/q
Na=3*10^14;
Nv=3.08*10^19;
a=4.05;  //say a=χsi
c=k*log(Nv/Na);  //say c=Ef-Ev
printf('\n The value of Ef-Ev is %fV',c);
b=1.125;  //say b=Eg
d=a+b-c;  //say d=φs
printf('\n The value of φs is %fV\n',d);
e=11.7*8.854*10^-14;  //say e=Єs
Vt=0.025852;
q=1.6*10^-19;
Na=3*10^14;
Ld=sqrt(e*Vt/(q*Na));
printf('\n The value of Ld is %f*10^-5cm\n',Ld*10^5);
eox=3.9*8.854*10^-14;  //say eox=Єox
dox=350*10^-7;
cox=eox/dox;
printf('\n The oxide capacitance per unit area is %f*10^-9F/cm^2',cox*10^9);
esi=11.7*8.854*10^-14;
Cdiffb=1/((dox/eox)+(Ld/esi));
printf('\n The capacitance per unit area at the flat band condition is %f*10^-9F/cm^2\n',Cdiffb*10^9);
Vfb1=a-d;
printf('\n The value of Vfb1 is %fV\n',Vfb1);
ni=1*10^10;
f=k*log(ni/Na);  //say f=φb
printf('\n The value of φb is %1.3f\n',f);
Xdmax=sqrt(2*e*2*(-f)/(q*Na));
printf('\n The value of Xdmax is %f*10^-4cm\n',Xdmax*10^4);
Qdmax=-q*Na*Xdmax;
printf('\n The value of Qdmax is %f*10^-9C/cm^2\n',Qdmax*10^9);
Emax=-Qdmax/e;
printf('\n The value of Emax is %fV/cm\n',Emax);
VT=Vfb1-(2*f)-(Qdmax/cox);
printf('\n The value of Threshold voltage is %fV\n',VT);