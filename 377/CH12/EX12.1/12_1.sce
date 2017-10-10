q=1.6*10^-19;
Nd=10^17;
a=0.25*10^-4;
c=13.1*8.854*10^-14;  //say c=Єs
Vp=q*Nd*a^2/(2*c);
printf('\n The value of Vp is %fV',Vp);
disp("Vbi=φb0+(Ec-Ef)");
e=0.88;  //say e=φb0
f=0.037;  //say f=(Ec-Ef)/q
Vbi=e-f;
printf('\n The value of Vbi is %fV',Vbi);
Vt=Vbi-Vp;
printf('\n The value of Vt is %fV and this is a depletion mode device',Vt);
Vsat=Vp-Vbi;  //say for Vg=0
printf('\n The value of Vsat at Vg=0 is %fV',Vsat);