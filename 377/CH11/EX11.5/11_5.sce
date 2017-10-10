k=0.026;  //say k=K*T/q
Na=5*10^16;
Nd=5*10^18;
ni=1.5*10^10;
Vbi=k*log(Na*Nd/ni^2);
printf('\n The value of built-in-potential is %fV',Vbi);
q=1.6*10^-19;
a=0.25*10^-4;
c=11.9*8.854*10^-14;  //say c=Єs
Vp=q*Na*(a^2)/(2*c);
printf('\n The value of pinch-off voltage is %fV',Vp);
Vg=1;
disp("b=sqrt(2*Єs*(Vbi+Vg)/(q*Na))");
b=sqrt(2*c*(Vbi+Vg)/(q*Na));
printf('\n The depletion width is %f μm',b*10^4);