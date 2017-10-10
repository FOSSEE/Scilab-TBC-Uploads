disp("Ef=(Ec/q)+(K*T/q)*log(Nd/Nc)");
d=0.026;  //say d=K*T/q
Nd1=2*10^16;
Nc=4.45*10^17;
c1=d*log(Nd1/Nc);  //say c1=(K*T/q)*log(Nd1/Nc)
printf('\n The value is Ef1 is Ec/q%f V',c1);
Vbi1=0.8-(-c1);
printf('\n The value is Vbi1 is %f V',Vbi1);
e1=13.2*8.854*10^-14;
b1=sqrt(2*e1*Vbi1/(q*Nd1));
printf('\n The value is b1 is %f μm',b1*10^4);
Nd2=2*10^17;
c2=d*log(Nd2/Nc);  //say c2=(K*T/q)*log(Nd2/Nc)
printf('\n The value is Ef2 is Ec/q%f V',c2);
Vbi2=0.8-(-c2);
printf('\n The value is Vbi2 is %f V',Vbi2);
e2=12.2*8.854*10^-14;
b2=sqrt(2*e2*Vbi2/(q*Nd2));
printf('\n The value is b2 is %f μm',b2*10^4);