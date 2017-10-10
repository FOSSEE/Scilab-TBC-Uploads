disp("Vbi=(K*T/q)*log(Na*Nd/(ni^2))");
k=0.026;  //say a=K*T/q
Na=10^18;
Nd=10^17;
ni=1.5*10^10;
a=0.25*10^-4;
q=1.6*10^-19;
c=11.9*8.854*10^-14;
Vbi=k*log(Na*Nd/(ni^2));
printf('\n The value of built in voltage is %fV',Vbi);
printf('\n');
disp("b=q*(a^2)*Nd/(2*Єs)");
b=q*(a^2)*Nd/(2*c);  //say b=Vbi-Vg
printf('\n The total voltage  drop required to pinch the channel is %fV',b);
Vg=Vbi-b;
printf('\n The value of gate bias at pinch-off is %fV',Vg);