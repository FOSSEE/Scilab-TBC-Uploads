q=1.6*10^-19;
Nd=2*10^15;
a=0.6*10^-4;
c=12.4*8.854*10^-14;  //say c=Єs
Vp=q*Nd*a^2/(2*c);
printf('\n The value of Vp is %fV\n',Vp);
d=0.026;  //sat d=K*T/q
Nc=4.7*10^17;
disp("φn=(K*T/q)*log(Nc/Nd)");
b=d*log(Nc/Nd);
printf('\n The value of φn is %fV\n',b);
disp("Vbi=φb0-φn");
e=0.89;  //say e=φb0
Vbi=e-b;
printf('\n The value of Vbi is %fV\n',Vbi);