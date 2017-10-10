Voff=0.5;
Vp2=0.9-0.24-Voff;
printf('\n The value of Vp2 is %fV',Vp2);
disp("d-d0=sqrt(Єs*Vp2/(q*Nd))");
c=12.2*8.854*10^-14;  //say c=Єs
q=1.6*10^-19;
Nd=10^18;
a=sqrt(c*Vp2/(q*Nd));
printf('\n The value of (d-d0) is %fA',a*10^8);
Vg=0.7;
d=153.9*10^-8;
ns=c*(Vg-Voff)/(q*d);
printf('\n The value of ns is %f*10^11/ cm^2',ns*10^-11);