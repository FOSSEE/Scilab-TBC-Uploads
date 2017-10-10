disp("φs=χsi+Eg+(Ev-Ef)");
k=0.026;  //say k=K*T/q
p=7*10^14;
Nv=3.08*10^19;
a=4.05;  //say a=χsi
b=1.125;  //say b=Eg
c=k*log(p/Nv);  //say c=Ev-Ef
printf('\n The value of Ev-Ef is %fV',c);
d=a+b+c;  //say d=φs
printf('\n The value of φs is %fV\n',d);
disp("φms=φm-φs");
f=4.05;  //say f=φm
g=f-d;  //say g=φms
printf('\n The value of φms is %1.2fV\n',g);
eox=3.9*8.854*10^-14;  //say eox=Єox
dox=200*10^-7;
cox=eox/dox;
printf('\n The oxide capacitance per unit area is %f*10^-8F/cm^2',cox*10^8);
printf('\n The value of flat band voltage is %1.2fV\n',g);
disp("Ld=sqrt(Є*Vt/(q*Na));");
e=11.7*8.854*10^-14;
Vt=0.025852;
q=1.6*10^-19;
Na=7*10^14;
Ld=sqrt(e*Vt/(q*Na));
printf('\n The value of Ld is %f*10^-5cm\n',Ld*10^5);
esi=11.7*8.854*10^-14;
Cfb=1/((dox/eox)+(Ld/esi));
printf('\n The capacitance per unit area at the flat band condition is %f*10^-8F/cm^2\n',Cfb*10^8);
printf('\n The capacitance per unit area for deep accumulation of majority carriers Caccum=%f*10^-8F/cm^2',cox*10^8); 