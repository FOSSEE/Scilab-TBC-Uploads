d=0.026;  //sat d=K*T/q
Nc=4.7*10^17;
Nd=2*10^15;
b=d*log(Nc/Nd);
printf('\n The value of φn is %fV\n',b);
e=0.89;  //say e=φb0
Vbi=e-b;
printf('\n The value of Vbi is %fV\n',Vbi);
Vt=0.25;
Vp=Vbi-Vt;
printf('\n The value of Vp is %fV\n',Vp);
q=1.6*10^-19;
c=13.1*8.854*10^-14;  //say c=Єs
a=sqrt(Vp*2*c/(q*Nd));
printf('\n The value of a is %f μm',a*10^4);