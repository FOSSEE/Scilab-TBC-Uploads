disp("Vbi=(K*T/q)*log(Na*Nd/ni^2)");
k=0.026;  //say a=K*T/q
Na=10^16;
Nd=10^19;
ni=1.5*10^10;
Vbi=k*log(Na*Nd/ni^2);
printf('\n The value of built-in-voltage is %fV',Vbi);
disp("Vp=q*Nd*a^2/(2*Єs)");
q=1.6*10^-19;
a=10^-8;
b=11.9*8.854*10^-14;  //say b=Єs
Vp=q*Nd*a^2/(2*b);
printf('\n The value of pinch-off voltage is %fV',Vp*10^5);