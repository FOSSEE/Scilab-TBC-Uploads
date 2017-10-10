disp("Vp=σ*(a^2)/(2*μh*Єs)");
b=1/10;  //say b=σ
c=500;  //say c=μh
d=12*8.854*10^-14;  //say d=Єs
a=2*10^-4;
Vp=b*(a^2)/(2*c*d);
printf('\n The value of pinch-off voltege is %fV',Vp);