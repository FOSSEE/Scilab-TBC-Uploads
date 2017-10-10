b=4.55;  //say b=φm
x=4.01;  //say x=χ
a=b-x;  //say a=φb
printf('\n The Schottky barrier height is %fV',a);
disp("Vbi=(K*T/q)*log(Nc/Nd);");
Nc=2.8*10^19;
Nd=10^16;
c=0.0259;  //say c=K*T/q
Vbi=c*log(Nc/Nd);
printf('\n The built in potential is %fV',Vbi);
disp("W=sqrt(2*Єs*Vbi/(q*Nd))");
d=11.7*8.854*10^-14;
Vbi1=0.33;
q=1.6*10^-19;
W=sqrt(2*d*Vbi1/(q*Nd));
printf('\n The space charge width at zero bias is %fcm',W*10^4);
disp("|Emax|=q*Nd*Wn/Єs");
Emax=q*Nd*W*10^-4/d;
printf('\n The maximum electric field is %f*10^4 V/cm',Emax);