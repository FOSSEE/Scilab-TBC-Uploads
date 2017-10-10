q=1.6*10^-19;
Nd=10^18;
d=500*10^-8;
d0=20*10^-8;
c=12.2*8.854*10^-14;  //say c=Єs
Vp2=q*Nd*((d-d0)^2)/c;
printf('\n The value of Vp2 is %fV',Vp2);
disp("Voff=φb0-ΔEc/q-Vp2");
a=0.85;  //say a=φb0
b=0.22;  //say b=ΔEc/q
Voff=a-b-Vp2;
printf('\n The value of Voff is %fV',Voff);
disp("ns=Єs*(Vg-Voff)/(q*d)");
Vg=0;
ns=c*(Vg-Voff)/(q*d);
printf('\n The value of ns is %f*10^12 cm^2',ns*10^-12);